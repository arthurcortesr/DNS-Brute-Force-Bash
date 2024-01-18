#!/bin/bash

# Definindo códigos de cor ANSI
COR_PKA='\e[38;5;197m'  # F5055C
COR_DNS='\e[38;5;220m'  # FEB63E
COR_VERDE='\e[92m' # 00FF00
COR_VERMELHO='\e[38;5;196m'   # E10406
RESET='\e[0m'  # Reset para as configurações padrão de cor

# Uso adequado
if [ "$#" -ne 2 ]; then
    echo "-------------------------------------------------------------------------------------"
    echo -e "${COR_PKA}Pk's Academy${RESET} - ${COR_DNS}DNS BRUTE FORCE${RESET}"
    echo "-------------------------------------------------------------------------------------"
    echo "Modo de uso: $0 <dominio> <arquivo_lista>"
    echo "-------------------------------------------------------------------------------------"
    echo "Exemplo: $0 businesscorp.com.br /usr/share/dirb/wordlists/small.txt"
    echo "-------------------------------------------------------------------------------------"
exit 1
fi

echo "--------------------------------"
echo -e "|${COR_PKA}Pk's Academy${RESET} - ${COR_DNS}DNS BRUTE FORCE${RESET}|"
echo "--------------------------------"
echo
echo "Fazendo Brute Force"
echo

dominio=$1
lista_arquivo=$2

# Variáveis
comando_host="host"
string_nxdomain="NXDOMAIN"

# Verifica se o arquivo de lista existe
if [ ! -f "$lista_arquivo" ]; then
    echo -e "${COR_VERMELO}Erro: O arquivo de lista '$lista_arquivo' não existe.${RESET}"
    exit 1
fi

# Loop através da lista
while read -r palavra; do
    resultado=$($comando_host "$palavra.$dominio")

    # Tratamento de resposta vazia
    if [ -z "$resultado" ]; then
        # Não faz nada se o resultado estiver vazio (domínio não encontrado)
        :
    else
        # Exibição personalizada
        echo -e "${COR_VERDE}$resultado${RESET}" | grep -v "$string_nxdomain" | sed 's/has address/--->/'
    fi
done < "$lista_arquivo"
