#!/bin/bash

# Directorio que contiene las imágenes
WALLPAPER_DIR="/etc/lightdm/session"

# Seleccionar una imagen al azar del directorio
wallpaper=$(ls $WALLPAPER_DIR/* | shuf -n 1)

# Cambiar el fondo de pantalla usando el comando bspc
bspc monitor -d focused --remove-bg
feh --bg-fill "$wallpaper"

