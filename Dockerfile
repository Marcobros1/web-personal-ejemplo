FROM nginxinc/nginx-unprivileged:1.27-alpine

# Imagen de nginx que arranca sin root (usuario 101) y escucha en el puerto 8080.
# Los ficheros los posee root: el usuario 101 puede leerlos, pero no modificarlos.
USER 101

# Solo se copian los ficheros que sirve la web, no el repo entero.
COPY index.html about.html project.html styles.css /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 8080
