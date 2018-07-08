FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

RUN mkdir /etc/nginx/www

COPY web-src /etc/nginx/www

COPY default.conf /etc/nginx/conf.d