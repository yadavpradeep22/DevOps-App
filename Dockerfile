# 1. Base image uthao
FROM nginx:alpine

# 2. Apni index.html file ko container ke andar copy karo
COPY index.html /usr/share/nginx/html/index.html

# 3. Port 80 ko kholo
EXPOSE 80
