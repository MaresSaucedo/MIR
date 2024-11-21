# Usa la imagen oficial de Nginx como base
FROM nginx:stable-alpine

# Copia el archivo HTML al directorio de contenido de Nginx
COPY resumen.html /usr/share/nginx/html/

# Expone el puerto 80 para acceder a la aplicación web
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
