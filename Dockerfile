FROM node:16

ARG FEATURE_NUMBER=1
ENV FEATURE_NUMBER=$FEATURE_NUMBER

ARG BANNER_IMAGE=img/banner.png
ENV BANNER_IMAGE=$BANNER_IMAGE

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]