FROM nginx:alpine

# Zet build time
RUN date -u > /usr/share/nginx/html/buildtime.txt

# Kopieer je html-bestanden naar de nginx web root
COPY html/ /usr/share/nginx/html/
