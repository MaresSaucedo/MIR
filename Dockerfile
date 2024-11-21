# Usa una imagen base de nginx para servir archivos estáticos
FROM nginx:alpine

# Copia tu archivo HTML al directorio de contenido de nginx
COPY resumen.html /usr/share/nginx/html/resumen.html

# Exponer el puerto 80 para el tráfico HTTP
EXPOSE 80
