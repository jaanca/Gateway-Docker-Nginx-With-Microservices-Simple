FROM nginx:latest

# Tools for Troubleshooting
RUN apt update 
RUN apt -y install iputils-ping curl vim

# Code
COPY ms_publication/index.html /usr/share/nginx/html/index.html
