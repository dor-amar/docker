FROM alpine

RUN apk add --no-cache curl
RUN apk add --no-cache --upgrade bash

COPY availability.sh /usr/local/bin/availability.sh

RUN chmod +x /usr/local/bin/availability.sh

CMD ["sh", "-c", "while true; do /usr/local/bin/availability.sh; sleep 5; done"]
