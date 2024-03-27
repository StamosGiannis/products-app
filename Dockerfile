# version of node to use
FROM node:20

# directory to save image
WORKDIR /app

#Install app dependencies
#A wildcard is used to ensure that both package
COPY package*.json ./
RUN npm install

# Copy all files to /app
COPY . .
EXPOSE 3000
CMD ["npm", "run", "start"]