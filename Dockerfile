# Utiliser une image Nginx légère
FROM nginx:alpine

# Supprimer les fichiers par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copier le fichier HTML dans le répertoire de Nginx
# On le renomme index.html pour qu'il soit servi par défaut
COPY fleche_pret_pro_v2.html /usr/share/nginx/html/index.html

# Exposer le port 80 (par défaut pour Render)
EXPOSE 80

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
