FROM n8nio/n8n:latest

USER root

# 安装 ffmpeg, python3, yt-dlp 和中文字体
RUN apk add --update --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    font-noto-cjk \
    bash \
    curl && \
    pip3 install yt-dlp --break-system-packages && \
    rm -rf /var/cache/apk/*

USER node
