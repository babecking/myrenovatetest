FROM node:16.20.2

# Install app dependencies
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

CMD ["node", "index.js"]

