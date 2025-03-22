# gods-smtp-server
SMTP server that always works
## Run this
```bash
docker build -t smtp-ok .
docker run -p 2525:25 smtp-ok
```