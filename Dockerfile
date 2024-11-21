# Usa una imagen base de Nginx
FROM nginx:alpine

# Copia el archivo HTML al directorio donde Nginx sirve los archivos
COPY index.html /usr/share/nginx/html/

# Expone el puerto 80 para acceder a la aplicación web
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
