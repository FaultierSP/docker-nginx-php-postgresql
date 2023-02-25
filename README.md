A simple way to fire up containers with server and database.

Change variables in the .env file, type `docker-compose up` and you are ready to go.

Comment out the "pgadmin" section on a project facing the interwebs, or take care of properly securing the installation. You also might want to change error reporting and timezone in php_ini/php.ini file.

If you want to wrap an outgoing connection with a ssl certificate, here is the way to do it with the nginx:
```
server {
   listen 443 ssl;
   server_name .realservername.com;

   ssl_certificate     /path/to/fullchain.pem;
   ssl_certificate_key /path/to/privkey.pem;
   
   location / {
        proxy_pass http://localhost:8080; #port you specified in the .env file 
   }
}
```
