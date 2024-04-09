# image build target: label-studio-yolov8-ml:20240409
FROM label-studio-yolov8-ml:latest
# RUN mkdir -p /data/label-studio/files
WORKDIR /app
COPY . ./
CMD exec gunicorn --preload --bind :$PORT --workers 1 --threads 8 --timeout 0 _wsgi:app
# RUN apt-get install iputils-ping -y
# CMD exec ping -i 10 localhost