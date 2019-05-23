FROM node:8.15.0-alpine

WORKDIR /root/

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "start", "--", "--port=8080"]
