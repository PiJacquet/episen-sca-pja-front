FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY /dist/episen-sca-pja-front /usr/share/nginx/html




