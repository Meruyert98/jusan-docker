curl -O https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.zip
curl -O https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.conf
unzip jusan-docker-mount.zip

docker run -d -p 9999:80 \
    --name jusan-docker-mount \
    -v $(pwd)/jusan-docker-mount.conf:/etc/nginx/conf.d/jusan-docker-mount.conf \
    -v $(pwd)/jusan-docker-mount:/var/www/example \
    nginx:mainline