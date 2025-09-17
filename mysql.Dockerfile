# Utilise l'image officielle de MySQL
FROM mysql:8.0

# Définit un argument de construction pour le mot de passe root, avec une valeur par défaut.
# Cette valeur est passée par docker-compose.
ARG MYSQL_ROOT_PASSWORD

# Définit la variable d'environnement pour MySQL à partir de l'argument de construction.
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

# Copie le fichier de base de données (dump.sql) dans le répertoire d'initialisation de MySQL
COPY dump.sql /docker-entrypoint-initdb.d/
