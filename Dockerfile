# Using Node base image
FROM node:18

# Setting working directory
WORKDIR /app

# Copying files
COPY package*.json ./

# Installing dependencies
RUN npm install

# Copying rest of the app
COPY . .

# Exposing port
EXPOSE 3000

# Starting app
CMD ["node", "app.js"]