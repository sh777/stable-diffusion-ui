FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget unzip curl bzip2 libgl1 libglib2.0-0 libsm6 libxrender1 libxext6 python3 \
	python3-pip \
	python3-venv \
	python3-opencv && \
    python3 -m pip install xformers


RUN wget https://github.com/cmdr2/stable-diffusion-ui/releases/download/v2.5.24/Easy-Diffusion-Linux.zip -O /tmp/Easy-Diffusion-Linux.zip && \
    unzip /tmp/Easy-Diffusion-Linux.zip -d /tmp && \
    mv /tmp/easy-diffusion /app && \
    rm /tmp/Easy-Diffusion-Linux.zip

EXPOSE 8080

CMD ["./app/scripts/start.sh"]