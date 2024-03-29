FROM node:20.11.1

ENV NODE_PATH=/app/node_modules
ENV PORT=80
ENV HOSTNAME=0.0.0.0

WORKDIR /app

COPY package*.json /app/
RUN npm install

COPY . /app

EXPOSE 80

CMD ["npm", "run", "start"]
