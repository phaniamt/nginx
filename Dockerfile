FROM phanikumary1995/nginx
#RUN apt-get update && apt-get install -y iputils-ping
#RUN apt-get update && apt-get install -y curl
COPY abc.com /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/abc.com /etc/nginx/sites-enabled/abc.com
EXPOSE 80 443
CMD ["nginx" , "-g" , "daemon off;"]
