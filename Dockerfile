# Utiliser une image Node.js officielle comme image de base
FROM node:14

# Définir le répertoire de travail dans l'image
WORKDIR /app

# Copier le package.json et le package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application dans l'image
COPY . .

# Exposer le port sur lequel l'application écoute
EXPOSE 3000

# Commande par défaut pour démarrer votre application lorsque le conteneur est lancé
CMD ["npm", "start"]
