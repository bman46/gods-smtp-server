FROM node:18-alpine
RUN apk add --no-cache git
RUN npm install -g Haraka
RUN haraka -i /haraka

WORKDIR /haraka

COPY plugins /haraka/plugins
COPY config /haraka/config
COPY ok_response.js /haraka/plugins/ok_response.js

CMD ["haraka", "-c", "/haraka"]
