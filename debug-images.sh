#!/bin/bash

echo "=== DIAGNÓSTICO DE IMÁGENES EN CONTENEDOR ==="
echo ""

# Obtener el ID del contenedor
CONTAINER_ID=$(docker ps --filter "name=ci5co-portfolio" --format "{{.ID}}")

if [ -z "$CONTAINER_ID" ]; then
    echo "❌ Contenedor ci5co-portfolio no encontrado"
    echo "Contenedores ejecutándose:"
    docker ps
    exit 1
fi

echo "✅ Contenedor encontrado: $CONTAINER_ID"
echo ""

echo "=== 1. VERIFICAR ARCHIVOS EN EL CONTENEDOR ==="
echo "Contenido de /usr/share/nginx/html/:"
docker exec $CONTAINER_ID ls -la /usr/share/nginx/html/

echo ""
echo "=== 2. VERIFICAR CONFIGURACIÓN DE NGINX ==="
echo "Configuración activa:"
docker exec $CONTAINER_ID cat /etc/nginx/conf.d/default.conf

echo ""
echo "=== 3. VERIFICAR LOGS DE NGINX ==="
echo "Últimos errores:"
docker exec $CONTAINER_ID tail -20 /var/log/nginx/error.log

echo ""
echo "Últimos accesos:"
docker exec $CONTAINER_ID tail -20 /var/log/nginx/access.log

echo ""
echo "=== 4. PROBAR ACCESO DIRECTO A IMAGEN ==="
echo "Probando acceso directo a search-mind.png desde dentro del contenedor:"
docker exec $CONTAINER_ID wget -O /dev/null http://localhost:4321/search-mind.png 2>&1

echo ""
echo "=== 5. VERIFICAR PERMISOS ==="
echo "Permisos de archivos PNG:"
docker exec $CONTAINER_ID ls -la /usr/share/nginx/html/*.png

echo ""
echo "=== 6. INFORMACIÓN DEL CONTENEDOR ==="
echo "Puerto expuesto:"
docker port $CONTAINER_ID

echo ""
echo "Estado del contenedor:"
docker inspect $CONTAINER_ID --format='{{.State.Status}}'