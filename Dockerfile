FROM node:alpine
LABEL app=my-node-app 
EXPOSE 3000
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
ENTRYPOINT ["node","./bin/www"]



