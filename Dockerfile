FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY STECIA-DIGITAL-TECHNOLOGY/ /usr/share/nginx/html/

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ >/dev/null || exit 1
