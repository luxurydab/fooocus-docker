FROM python:3.10

ENV PYTHONBUFFERED=1
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

WORKDIR /usr/src/fooocus

COPY Fooocus/requirements_versions.txt requirements_versions.txt
RUN apt-get update
RUN apt install -y libgl1-mesa-glx
RUN python3.10 -m pip install --upgrade pip
RUN python3.10 -m pip install --no-cache-dir -r requirements_versions.txt
