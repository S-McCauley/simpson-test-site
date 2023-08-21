FROM alpine:latest


RUN apk update
RUN apk upgrade
RUN apk add nginx

RUN mkdir -p /run/nginx

#copies nginx.conf file
COPY nginx.conf /etc/nginx/nginx.conf
#copies html source files
COPY /html /usr/share/nginx/html


EXPOSE 80

#ENTRYPOINT [/usr/share/nginx/html]

CMD ["nginx", "-g", "daemon off;"]