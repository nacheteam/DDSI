#!/bin/bash
# Se le pasa como argumento la contraseña al script.
if [ "$#" -ne 1 ]; then
    echo -e "Introduce tu contraseña de MySQL como parámetro."
fi

echo -n "¿Quieres importar o exportar?(i/e): "
read importar_exportar
if [ $importar_exportar == "e" ]; then
    sudo mysqldump -u root --password=$1 -p BicicletasParis > bicicletasParis.sql
else
    sudo mysql -u root --password=$1 -p BicicletasParis < bicicletasParis.sql
fi
