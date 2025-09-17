# Verwende Node.js als Basis-Image
FROM node:18-alpine

# Setze Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere package.json
COPY package.json .

# Installiere Dependencies
RUN npm install

# Kopiere den Rest der App
COPY . .

# Exponiere Port 3000
EXPOSE 3000

# Starte die App
CMD ["npm", "start"] 
