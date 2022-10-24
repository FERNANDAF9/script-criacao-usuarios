#!/bin/bash

echo "Criando grupos..."
groupadd GRP_FUN
groupadd GRP_EST

echo "Configurando pasta da empresa..."
mkdir /arquivos_empresa

chmod 775 /arquivos_empresa
chown root:GRP_FUN /arquivos_empresa

echo "Adicionando usuários..."
useradd fernanda -c "Fernanda" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_FUN
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_FUN
useradd ramon -c "Ramon" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_FUN
useradd juca -c "Juca" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_EST

echo "Instalando a aplicação SAMBA..."
apt install samba -y

echo "[servidor_de_arquivos]" >> /etc/samba/smb.conf
echo "path = /arquivos_empresa" >> /etc/samba/smb.conf
echo "writable = yes" >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf

systemctl restart smbd
systemctl enable smbd

echo "Modificações concluídas com sucesso."
