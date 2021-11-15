FROM nginx:alpine
COPY ./dist/my-appl /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx","-g","daemon off;"]
