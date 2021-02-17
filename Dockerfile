FROM node:14

WORKDIR /app

# Set Environment Variables
COPY package.json /app
RUN npm install
COPY app.js /app
COPY openid-config.json /app
COPY start.sh /app
RUN chmod a+x start.sh && chmod a+w openid-config.json
EXPOSE 8080
CMD [ "start.sh" ]
