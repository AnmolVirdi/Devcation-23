FROM nginx:stable

# create directories
RUN mkdir -p /usr/src/Devcation-23

# copy files
COPY . /usr/src/Devcation-23
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
RUN mkdir -p /var/www/html
RUN cp -r /usr/src/Devcation-23/* /var/www/html
RUN nginx

