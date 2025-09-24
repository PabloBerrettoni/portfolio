FROM docker.io/library/nginx:alpine

WORKDIR /usr/share/nginx/html
COPY index.html style.css resume-PabloBerrettoni.pdf ./
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]