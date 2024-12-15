#! /bin/bash

echo "criando user ADM"
 
useradd carlos -c "ADM" -m -s /bin/bash -p $(openssl passwd 123)

useradd maria -c "ADM" -m -s /bin/bash -p $(openssl passwd 123)

useradd joao -c "ADM" -m -s /bin/bash -p $(openssl passwd 123)

echo "ADM finalizado"

echo "criando user VEN "

useradd debora -c "VEN" -m -s /bin/bash -p $(openssl passwd 123)

useradd sebastiana -c "VEN" -m -s /bin/bash -p $(openssl passwd 123)

useradd roberto -c "VEN" -m -s /bin/bash -p $(openssl passwd 123)

echo "Ven finalizado"

echo "criando user SEC "

useradd josefina -c "VEN" -m -s /bin/bash -p $(openssl passwd 123)

useradd amanda -c "VEN" -m -s /bin/bash -p $(openssl passwd 123)

useradd rogerio -c "VEN" -m -s /bin/bash -p $(openssl passwd 123)

echo "SEC finalizado"

echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "grupo finalizado"

echo " adicionando users ao grupo"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo " finalizado"

echo " criando diretorios"

mkdir /adm /ven /sec /publico

echo "finalizado"

echo "adicionando grupo a pasta especifica"

chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

echo "finalizado"

echo " permissoes a pasta"

chmod 770 /adm

chmod 770 /ven

chmod 770 /sec

chmod 777 /publico

echo " finalizado" 


