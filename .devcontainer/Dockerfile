FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && apt-get install -y \
    curl build-essential \
    libffi-dev libgmp-dev libncurses-dev libtinfo5 \
    git

USER vscode
WORKDIR /home/vscode
