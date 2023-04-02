FROM huggingface/transformers-pytorch-gpu

ENV TZ "Asia/Chongqing"
ENV DEBIAN_FRONTEND noninteractive

# RUN apt-get update -y && \
#     apt-get upgrade -y && \
#     apt-get install -y wget unzip curl bzip2 libgl1 libglib2.0-0 python3 python3-pip python-is-python3 && \
#     rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/cmdr2/stable-diffusion-ui/releases/download/v2.5.24/Easy-Diffusion-Linux.zip -O /tmp/Easy-Diffusion-Linux.zip && \
    unzip /tmp/Easy-Diffusion-Linux.zip -d /tmp && \
    mv /tmp/easy-diffusion /app && \
    rm /tmp/Easy-Diffusion-Linux.zip

EXPOSE 8080

CMD ["./app/scripts/start.sh"]