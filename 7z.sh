#!/bin/bash

# Definir colores para la salida
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # Sin color

# Detener el script inmediatamente si ocurre un error
set -e

echo -e "${BLUE}==> Eliminando archivos zip antiguos...${NC}"
rm -f zip/Build.zip zip/Build.z* zip/Build.7z.*

echo -e "${BLUE}==> Comprimiendo carpeta Build (dividido en partes de 500MB)...${NC}"
7z a -tzip -mx=9 -v1900m zip/Build.zip Build/

echo -e "${GREEN}==> ¡Proceso completado exitosamente!${NC}"
