FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget unzip curl

RUN wget https://github.com/cmdr2/stable-diffusion-ui/releases/download/v2.5.24/Easy-Diffusion-Linux.zip -O /tmp/Easy-Diffusion-Linux.zip && \
    unzip /tmp/Easy-Diffusion-Linux.zip -d /tmp && \
    mv /tmp/easy-diffusion /app && \
    rm /tmp/Easy-Diffusion-Linux.zip

EXPOSE 8080

CMD ["./app/scripts/start.sh"]