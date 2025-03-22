FROM instrumentisto/haraka

# Set working directory
WORKDIR /haraka

RUN apk add --no-cache git python3 g++ make
ADD "https://api.github.com/bman46/haraka-plugin-accept-all/repo_name/commits?per_page=1" latest_commit
RUN git clone https://github.com/bman46/haraka-plugin-accept-all.git
RUN cd /haraka && npm install ./haraka-plugin-accept-all
RUN mkdir config && echo "accept-all" >> config/plugins

COPY config /haraka/config

CMD ["haraka", "-c", "/haraka"]
