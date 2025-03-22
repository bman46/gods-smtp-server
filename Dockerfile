FROM instrumentisto/haraka

# Set working directory
WORKDIR /haraka

RUN apk add --no-cache git python3 g++ make 
RUN git clone https://github.com/bman46/haraka-plugin-accept-all.git
RUN npm install ./haraka-plugin-accept-all

COPY config /haraka/config

CMD ["haraka", "-c", "/haraka"]
