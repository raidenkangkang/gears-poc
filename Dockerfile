FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

# remove all files within that www folder along with the www folder
RUN rm -rf /etc/nginx/www

RUN mkdir /etc/nginx/www

COPY web-src /etc/nginx/www

COPY default.conf /etc/nginx/conf.d