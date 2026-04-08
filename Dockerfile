FROM ubuntu:22.04
RUN apt-get update && apt-get install -y ca-certificates fontconfig
WORKDIR /app
COPY . .
RUN chmod +x server.x86_64
CMD ["./server.x86_64", "--headless"]

