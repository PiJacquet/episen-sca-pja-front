FROM nginx:1.17.1-alpine as builder1
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY /dist/episen-sca-pja-front /usr/share/nginx/html

FROM builder1 as builder2
## create and add permissions for nginx user and adding curl for test purpose
RUN adduser appnginx -u 1300 -g user -D -s /bin/bash && \
		chown -R appnginx /var/cache/nginx && \
        chown -R appnginx /var/log/nginx && \
        chown -R appnginx /etc/nginx/conf.d && \
		touch /var/run/nginx.pid && \
        chown -R appnginx /var/run/nginx.pid && \
        chmod -R 777 /etc/nginx/conf.d && \
		apk --no-cache add curl
USER 1300
EXPOSE 8081 
LABEL "episen.sca.pja"="frontendtp4"
LABEL version="1.0"
LABEL description="Frontend used on the SCA TP4"


