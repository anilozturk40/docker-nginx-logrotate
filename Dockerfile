FROM nginx:stable

#RUN rm /etc/nginx/conf.d/default.conf
RUN mkdir /etc/nginx/modules-enabled
COPY ./mod-http-headers-more-filter.conf /etc/nginx/modules-enabled/
COPY ./ngx_http_headers_more_filter_module.so /usr/lib/nginx/modules/.

RUN rm /etc/nginx/nginx.conf
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

#./configure --with-compat --add-dynamic-module=../headers-more-nginx-module
RUN apt update
RUN apt install nano && apt install net-tools
RUN apt -y install logrotate
RUN apt -y install procps
