#!/bin/bash

# Definindo códigos de cor ANSI
pk='\e[38;5;197m'  # F5055C
dns='\e[38;5;220m'  # FEB63E
verde='\e[92m' # 00FF00
vermelho='\e[38;5;196m'   # E10406
reset='\e[0m'  # Reset para as configurações padrão de cor

# Verifica se a quantidade de argumentos é válida
if [ "$#" -ne 2 ]; then
	echo "-------------------------------------------------------------------------------------"
	echo -e "${pk}Pk's Academy${reset} - ${dns}DNS BRUTE FORCE${reset}"
	echo "-------------------------------------------------------------------------------------"
	echo "Modo de uso: ./dns_brute_force.sh <dominio> <arquivo_lista>"
	echo "-------------------------------------------------------------------------------------"
	echo "Exemplo: ./dns_brute_force.sh businesscorp.com.br /usr/share/dirb/wordlists/small.txt"
	echo "-------------------------------------------------------------------------------------"
	exit 1
fi

# Mensagem de início
echo "--------------------------------"
echo -e "|${pk}Pk's Academy${reset} - ${dns}DNS BRUTE FORCE${reset}|"
echo "--------------------------------"
echo
echo "Fazendo Brute Force..."
echo


# Loop para fazer brute force
while IFS= read -r palavra; do
    resultado=$(host "$palavra.$1" | grep -v "NXDOMAIN" | sed 's/has address/--->/')
    if [ -n "$resultado" ]; then
        echo -e "\e[92m$resultado\e[0m"
    fi
done < "$2"
