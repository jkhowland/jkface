FROM caddy:2-alpine
COPY index.html connect.html /srv/
COPY privacy /srv/privacy
COPY terms /srv/terms
CMD ["sh", "-c", "caddy file-server --root /srv --listen :${PORT:-8080}"]
