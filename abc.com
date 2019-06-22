#############################################################################
#                              Mysql                                        #
#############################################################################
server {
    listen            80;
    listen       [::]:80;
    server_name  mysql.yphanikumar.xyz www.mysql.yphanikumar.xyz;

    location / {
        proxy_read_timeout    90;
        proxy_connect_timeout 90;
        proxy_redirect        off;
        proxy_pass http://phpmyadmin-svc.default.svc.cluster.local;

        proxy_set_header      X-Real-IP $remote_addr;
        proxy_set_header      X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header      Host $host;
    }
}
