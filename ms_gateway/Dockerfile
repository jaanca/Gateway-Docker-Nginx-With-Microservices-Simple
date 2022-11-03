FROM nginx:1.23.2

# Tools for Troubleshooting
RUN apt update 
RUN apt -y install iputils-ping curl vim

# Code
COPY ms_gateway/default.conf /etc/nginx/conf.d/default.conf
COPY ms_gateway/index.html /usr/share/nginx/html/index.html
COPY ms_gateway/backend-not-found.html /usr/share/nginx/html/backend-not-found.html
COPY ms_gateway/includes/ /etc/nginx/includes/

