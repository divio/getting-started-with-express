FROM node:lts-alpine

ENV PORT=80
ENV HOSTNAME=0.0.0.0

WORKDIR /app

COPY package*.json /app/
RUN npm install

COPY . /app

EXPOSE 80

CMD ["npm", "run", "start"]
