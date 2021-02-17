FROM node:14

WORKDIR /app

# Set Environment Variables
COPY package.json /app
RUN npm install
COPY app.js /app
COPY openid-config.json /app
EXPOSE 8080
CMD [ "node", "app.js" ]
