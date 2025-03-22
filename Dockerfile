FROM instrumentisto/haraka

# Set working directory
WORKDIR /haraka

COPY plugins /haraka/plugins
COPY config /haraka/config
COPY plugins/ok_response.js /haraka/plugins/ok_response.js

CMD ["haraka", "-c", "/haraka"]
