# Use lightweight nginx
FROM nginx:alpine

LABEL maintainer="Pablo Berrettoni <pabloberrettoni98@gmail.com>"
LABEL description="Portfolio website for Pablo Berrettoni"

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy site files
COPY index.html style.css resume-PabloBerrettoni.pdf ./

# Copy nginx default config (optional, basic static server)
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose HTTP port
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
