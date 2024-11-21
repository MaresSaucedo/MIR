# Usa una imagen base de Nginx en Alpine Linux para una imagen más ligera
FROM nginx:alpine

# Copia el archivo HTML y la configuración de Nginx
COPY index.html /usr/share/nginx/html/
COPY ./nginx.conf /etc/nginx/nginx.conf


# Verifica la sintaxis de la configuración de Nginx
RUN nginx -t

# Muestra la configuración completa para diagnóstico
RUN nginx -T

# Crea un directorio para los logs
RUN mkdir -p /var/log/nginx

# Cambia los permisos para asegurar que Nginx pueda escribir logs
RUN chown -R nginx:nginx /var/log/nginx

# Expone el puerto 80 para acceder a la aplicación web
EXPOSE 80

# Comando para iniciar Nginx en primer plano y redirigir logs a stdout/stderr
CMD ["nginx", "-g", "daemon off;"]
