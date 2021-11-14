1. Utilizando el dockerfile del primer ejercicio
2. Se agrego lo siguiente
3. HEALTHCHECK  --interval=45s --timeout=5s --start-period=15s --retries=2 CMD HEALTHCHECK CMD curl --fail http://localhost:8080 || exit 1  
4. Luego se genero la imagen
5. docker build -t img_healthcheck .
6. y por ultimo
7. docker run --rm -d -p 8080:80  --name web_healthcheck -v $PWD/static_content:/usr/share/nginx/html/ img_healthcheck
