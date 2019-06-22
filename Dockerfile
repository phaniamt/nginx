FROM phanikumary1995
COPY abc.com /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/abc.com /etc/nginx/sites-enabled/abc.com
EXPOSE 80 443
CMD ["nginx" , "-g" , "daemon off;"]
