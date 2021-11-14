# a.	Utilizar la imagen base NGINX haciendo uso de la versión 1.19.3 
FROM nginx:1.19.3

#montar el volumen static_content
VOLUME static_content /usr/share/nginx/html

#abrir el puero 80
EXPOSE 80

HEALTHCHECK  --interval=45s --timeout=5s --start-period=15s --retries=2 CMD HEALTHCHECK CMD curl --fail http://localhost:8080 || exit 1  