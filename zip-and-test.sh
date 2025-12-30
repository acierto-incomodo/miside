#!/bin/bash

# Definir colores para la salida
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # Sin color

# Detener el script inmediatamente si ocurre un error
set -e

echo -e "${BLUE}==> Eliminando archivos zip antiguos...${NC}"
rm -f zip/Build.zip zip/Build.z*

echo -e "${BLUE}==> Comprimiendo carpeta Build (dividido en partes de 500MB)...${NC}"
zip -r -s 500m zip/Build.zip Build/

echo -e "${BLUE}==> Verificando la integridad del archivo zip...${NC}"
zip -T zip/Build.zip

echo -e "${GREEN}==> ¡Proceso completado exitosamente!${NC}"