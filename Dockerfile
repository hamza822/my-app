FROM nginx:alpine
COPY ./dist/my-app /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx","-g","daemon off;"]
