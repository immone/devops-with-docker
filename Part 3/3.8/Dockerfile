FROM node:16.20.2 as build-stage

## from README.md
EXPOSE 3000

ENV REACT_APP_BACKEND_URL=http://localhost:8080 

## Working directory
WORKDIR /usr/app

## Copy source code
COPY . .

RUN npm install && npm run build && npm install -g serve

FROM busybox:1.36

WORKDIR /usr/app

COPY --from=build-stage /usr/app/build/ /usr/app

RUN adduser -D appuser

# changer user
USER appuser

CMD ["busybox", "httpd", "-f", "-v", "-p", "3000"]