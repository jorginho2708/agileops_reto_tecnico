#!/bin/bash

echo -e "Tener en cuenta que el backend ya lo he dockerizado y convertido en imagen"
echo -e "Se empezara a descagar las imagenes contenerizadas para el reto tecnico Backend - NGINX - POSTGRES"
docker pull jorginho2708/nginx_reto_tecnico:latest
docker pull jorginho2708/postgres_bd:latest
docker pull jorginho2708/backend_reto_tecnico:latest
sleep  3
echo -e "Se descargaron las imagenes desde mi repositorio personal de dockerhub, las 03 imagenes que se solicitan en el reto tecnico \n"
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
docker images
sleep 3
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -n -e "\n"
echo -e "Se empezaran a construir las imagenes pertinentes para el reto tecnico"
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
docker run -d --name backend_reto_tecnico jorginho2708/backend_reto_tecnico:latest
docker run -d --name nginx_reto_tecnico jorginho2708/nginx_reto_tecnico:latest
docker run --name postgres_bd -e POSTGRES_PASSWORD=Passw0rd2022. -d jorginho2708/postgres_bd:latest
sleep 2
echo -n -e "--------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -e "Las imagenes del reto tecnico fueron desplegadas correctamente \n"
echo -n -e "---------------------------------------------------------------------------------------------------------------------------------------------------------\n"
sleep 5
docker ps
echo -n -e "\n"
echo -n -e "-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -n -e "----------Se debe esperar unos 30 seg para que todos las imagenes desplegadas corran correctamente por tal se le aplica al bashero un sleep de 30 seg-------------------------------------------------\n"
echo -n -e "----------------------------------------------------------------------------------------------------------------------------------------------------------\n"
sleep 30
docker ps
echo -n -e "------------------------------------------------------------------------------------------------------------------------------------------------------------\n"
echo -e "Suma de 02 numeros enteros mediante REST(tener en cuenta que no soporta decimales esta suma) \n"
echo -n -e "------------------------------------- \n"
echo -n "Ingresar el primer numero entero:  "
read n1
echo -n "Ingresar el segundo numero entero:  "
read n2
echo -e "Resultado de la suma =  "
echo $n1 + $n2 = $(($n1+$n2))
echo -n -e "---------------------------------------- \n"
echo -e "El resultado de la suma se registrara en la  Base de Datos = " $(($n1+$n2)) 

