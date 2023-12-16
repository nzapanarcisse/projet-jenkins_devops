FROM nginx:1.21.1
LABEL maintainer="Nzapa Narcisse"
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl git

RUN rm -Rf /usr/share/nginx/html/* && \
    git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html

CMD nginx -g 'daemon off;'
