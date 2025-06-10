#docker file for a basic nginx container
FROM nginx:latest

#copy the index.html file to the nginx html directory
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]