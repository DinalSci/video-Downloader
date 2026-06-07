FROM python:3.10-slim

# Install system dependencies (FFmpeg is mandatory for merging streams properly)
RUN apt-get update && apt-get install -y ffmpeg python3-pip && apt-get clean

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "bot.py"]
