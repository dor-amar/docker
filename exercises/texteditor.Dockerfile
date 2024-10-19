FROM alpine:latest

RUN apk add --no-cache nano

CMD ["nano", "textfile.txt"]
