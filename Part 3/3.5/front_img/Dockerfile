## install Node.js
FROM node:16.20.2

## from README.md
EXPOSE 3000

## Working directory
WORKDIR /usr/src/app

## Copy source code
COPY . .

## install packages
RUN npm install

## set backend var
RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

## install server

RUN npm install -g serve

## run serve

# create the appuser
RUN useradd -m appuser

# changer user
USER appuser

CMD serve -s -l 3000 build
