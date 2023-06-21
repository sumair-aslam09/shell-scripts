FROM alpine:latest
WORKDIR /src/app
RUN touch hello.txt
COPY /home/sumair/app/script.sh .
RUN chmod +x script.sh
ENTRYPOINT ["bash","script.sh"]
