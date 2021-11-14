1. Crear una carpeta/volumen llamado static_content
2. Dentro de ente volumen se crea un archivo llamado index.html
3. El contenido de este archivo: <p>HOMEWORK 1</p>
4. El contenido del docker file:

FROM nginx:1.19.3

#montar el volumen static_content
VOLUME static_content /usr/share/nginx/html


#abrir el puero 80

EXPOSE 80


5. Ejecutar estos comandos 

docker build -t img_ejercicio3 .

docker run -d  --name web_ejercicio3  -p 8080:80 -v=$PWD/static_content:/usr/share/nginx/html img_ejercicio3

6. ir a http://localhost:8080/   

   
