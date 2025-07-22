FROM node:lts-alpine

WORKDIR  /app
# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code

COPY . .

CMD [ "npm", "start" ]
