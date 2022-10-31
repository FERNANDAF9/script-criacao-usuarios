# Script de servidor de arquivos Linux :file_folder:

## Objetivo

O projeto visa o estudo acerca de criação de scripts e servidores de arquivos linux, utilizando-se a aplicação SAMBA.
Nesse script, toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente.

## O projeto

O projeto simula um ambiente de empresa, na qual há vários usuários de diferentes funcionários, cada qual com suas permissões. todos os arquivos dos funcionários ficam salvos de forma centralizada em um servidor linux, e não na máquina local do funcionário. Além disso, é possível administrar regras de acesso dos usuários, isto é, que tipo de dados eles podem ou não ter acesso.

## Os usuários

Para fim de testes, foram criados 4 usuários, sendo:

3 usuários funcionários(GRP_FUN): Fernanda, Carlos e Ramon.

1 usuário estagiário(GRP_EST): Juca.

A gerencia e os funcionários tem acesso acesso total aos arquivos no servidor. Já o estagiário pode somente ler e executar arquivos, mas não pode realizar nenhum tipo de alteração.

## O Script

Para rodar o script, digite na linha de comando onde o arquivo foi salvo:
```
chmod +x script.sh
./script.sh
```

Assim que o script for executado, para entrar no servidor remotamente, vá até o diretório do explorador de arquivos e digite:

`\\ip do servidor\nome do servidor`

<div align=center>
  <img width = 400 src='https://user-images.githubusercontent.com/56310579/199094791-1dfbd4c4-4073-4d09-bb79-5ee7b3fa7251.png' /img>
</div>

Logo após, é aberta uma nova janela de login, cujos usuários são os que foram criados pelo script.

<div align=center>
  <img width = 400 src='https://user-images.githubusercontent.com/56310579/199095648-40d64ec9-e2c0-47f6-acaa-445ce7f7b493.png' /img>
</div>

##
Ao entrar como estagiário, podemos visualizar e executar arquivos. Entretanto, ao tentar editar a pasta adicionando um arquivo por exemplo, recebemos um aviso:

<div align=center>
  <img width = 400 src='https://user-images.githubusercontent.com/56310579/199095893-9fc4de7b-c9ac-4e35-ba37-8be74e1c8d3f.png' /img>
</div>

##
Ao entrar como funcionário, podemos realizar edições no servidor, a exemplo um arquivo de texto:

<div align=center>
  <img width = 500 src='https://user-images.githubusercontent.com/56310579/199096359-f9c2c7aa-78cc-430f-b0f4-485f3b36f13e.png' /img>
</div>

## Considerações finais
Obrigada por visitar!

