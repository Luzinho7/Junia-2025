# Utilise l'image MySQL officielle
FROM mysql:8.0

# Copie le fichier de dump SQL dans le répertoire d'initialisation de la base de données
COPY dump.sql /docker-entrypoint-initdb.d/

# Définit une variable ARG pour le mot de passe
ARG MYSQL_ROOT_PASSWORD

# Définit la variable d'environnement pour que MySQL utilise le mot de passe passé au build
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
