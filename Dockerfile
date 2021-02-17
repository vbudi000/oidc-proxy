FROM node:14

WORKDIR /app

# Set Environment Variables
COPY package.json /app
RUN npm install
COPY app.js /app
COPY oidcconfig /app
EXPOSE 8080
CMD [ "node", "app.js" ]
