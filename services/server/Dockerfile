FROM nginx:1.20.1-alpine@sha256:2012644549052fa07c43b0d19f320c871a25e105d0b23e33645e4f1bcf8fcd97 AS base

LABEL maintainer="Aparg"

EXPOSE 443 80

COPY nginx.conf /etc/nginx/nginx.conf.template
CMD envsubst "$(printf '${%s} ' $(env|cut -d'=' -f1))" </etc/nginx/nginx.conf.template> /etc/nginx/nginx.conf && \
    nginx -g 'daemon off;' 

FROM base AS dev
RUN apk add openssl && \
    openssl req -x509 -nodes -days 3650 \
    -subj "/C=AM/ST=Yerevan/L=Armenia/O=selfsigned/CN=localhost" -addext "subjectAltName=DNS:localhost" \
    -newkey rsa:2048 -keyout /etc/ssl/certs/privkey.pem \
    -out /etc/ssl/certs/fullchain.pem 