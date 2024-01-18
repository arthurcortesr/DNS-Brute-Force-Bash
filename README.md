# DNS-Brute-Force-Bash

O script ```dns_brute_force.sh``` é  uma ferramenta de linha de comando desenvolvida em bash para realizar ataques de força bruta em domínios, buscando por subdomínios potenciais. Essa abordagem é útil para identificar possíveis pontos de entrada em sistemas web e redes.

<br>

---

<br>

## **Modo de uso**

```bash
./dns_brute_force.sh <dominio> wordlist
```

## **Exemplo**

```bash
/dns_brute_force.sh businesscorp.com.br /usr/share/dirb/wordlists/small.txt
```

## **Exemplo de saída**

```bash
--------------------------------
|Pk's Academy - DNS BRUTE FORCE|
--------------------------------

Subdomínio encontrado: teste1.exemplo.com
Subdomínio encontrado: www.exemplo.com ---> 192.168.1.10
Subdomínio encontrado: teste2.exemplo.com
Subdomínio encontrado: blog.exemplo.com ---> 192.168.1.15
...
```

<br>

---

<br>

## **Funcionalidades**

1. Realiza um ataque de força bruta em um domínio usando uma lista de palavras.
2. Apresenta uma mensagem de ajuda quando os argumentos não são fornecidos corretamente.
3. Verifica a existência do arquivo de lista antes de iniciar o ataque.

<br>

---

<br>

## **Observações**

1. O script depende do comando host para realizar consultas DNS. Certifique-se de que esse comando está disponível no ambiente em que o script será executado.
2. A utilização do script requer permissões de execução. Caso não tenha, conceda-as com o comando chmod +x dns_brute_force.sh.
3. Usa códigos de cor ANSI para melhorar a apresentação e legibilidade.
4. Exibe mensagens informativas e de erro para orientar o usuário.

<br>

---

<br>

## **Avisos**

1. O script depende do comando host para realizar as consultas DNS.
2. Uso Responsável: O script é destinado a fins educacionais e deve ser usado com responsabilidade e em conformidade com as leis e regulamentações locais. O uso indevido pode resultar em consequências legais.










































