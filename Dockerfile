FROM nginx:alpine

# Install certbot & tools
RUN apk add --no-cache certbot openssl bash curl

LABEL maintainer="Pablo Berrettoni <pabloberrettoni98@gmail.com>"
LABEL description="Portfolio website for Pablo Berrettoni with HTTPS support"

WORKDIR /usr/share/nginx/html

# Copy site files
COPY index.html style.css resume-PabloBerrettoni.pdf ./

# Copy nginx config
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy certificate renewal script
COPY renew.sh /renew.sh
RUN chmod +x /renew.sh

# Create mount point for cert persistence
VOLUME ["/etc/letsencrypt"]

# Expose ports
EXPOSE 80 443

# Start script: get certs if missing, then run nginx + certbot renew loop
CMD ["/bin/sh", "-c", "\
    if [ ! -f /etc/letsencrypt/live/pabloberrettoni.com/fullchain.pem ]; then \
      certbot certonly --standalone --non-interactive --agree-tos \
      -m pabloberrettoni98@gmail.com -d pabloberrettoni.com -d www.pabloberrettoni.com; \
    fi && \
    ( /renew.sh & ) && \
    nginx -g 'daemon off;'"]
