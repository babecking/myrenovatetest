
FROM node:22.18.0

# Install app dependencies
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

CMD ["node", "index.js"]

