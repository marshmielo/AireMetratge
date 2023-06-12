#!/bin/bash

#Crear el directorio principal de la imagen
mkdir /opt/AireMetratge
mkdir /opt/AireMetratge/Imagenes

#Mover la imagen a la ruta absoluta que deseamos, la que hemos creado anteriormente
cp ./Imagenes/logo.png /opt/AireMetratge/Imagenes/logo.png

#Mover el codigo compilado
cp -r ./dist/codigo/* /opt/AireMetratge/

#Crear la aplicacion en usr
touch /usr/share/applications/AireMetratge.desktop
echo "[Desktop Entry]" >> /usr/share/applications/AireMetratge.desktop
echo "Type=Application" >> /usr/share/applications/AireMetratge.desktop
echo "Name=Aire Metratge" >> /usr/share/applications/AireMetratge.desktop
echo "Exec=/opt/AireMetratge/codigo" >> /usr/share/applications/AireMetratge.desktop
echo "Icon=/opt/AireMetratge/Imagenes/logo.png" >> /usr/share/applications/AireMetratge.desktop
echo "Comment=Software para calcular el índice de calidad del Aire (ICA)." >> /usr/share/applications/AireMetratge.desktop

#comprobar que se pueda ejecutar
chmod +x /opt/AireMetratge/codigo
