# Dockerfile pour embarquer le code dans une image nginx appelée "app"
FROM nginx:latest

# Nettoyer le contenu par défaut (optionnel)
RUN rm -rf /usr/share/nginx/html/*

# Copier tout le projet (index.php, .php, css, js, etc.)
COPY . /usr/share/nginx/html/

# Droits (si nécessaire)
RUN chown -R 101:101 /usr/share/nginx/html || true

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
