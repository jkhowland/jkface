FROM caddy:2-alpine
COPY index.html watch.png icon.png /srv/
COPY connect /srv/connect
COPY privacy /srv/privacy
COPY terms /srv/terms
CMD ["sh", "-c", "caddy file-server --root /srv --listen :${PORT:-8080}"]
