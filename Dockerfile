FROM python:3-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["/usr/local/bin/pytube", "--audio=mp4"]