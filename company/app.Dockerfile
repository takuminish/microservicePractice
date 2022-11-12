FROM node

COPY app /app

WORKDIR /app

RUN npm install

EXPOSE 4203