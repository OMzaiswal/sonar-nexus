FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY index.js ./

RUN useradd -m appuser

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 3000

CMD ["node", "index.js"]