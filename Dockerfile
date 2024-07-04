FROM python:3.9-slim-bullseye

# Install dependencies, including graphics libraries
RUN apt-get update && \
    apt install -y git \
    build-essential \
    wget \
    vim \
    unzip \
    libxext6 \
    libxrender1 \
    libxkbcommon-x11-0 \
    libfontconfig1 \
    libgtk2.0-dev \
    pkg-config \
    libglib2.0-0 && \
    apt-get install -y libgl1-mesa-glx && \
    pip install --upgrade pip

RUN pip install opencv-python

COPY Card_Detector/ /work/

WORKDIR work

#CMD ["python3", "CardDetector.py"]
