curl -O https://stepik.org/media/attachments/lesson/686238/jusan-dockerfile.zip
curl -O https://stepik.org/media/attachments/lesson/686238/jusan-dockerfile.conf
unzip jusan-dockerfile.zip

docker build -t "nginx:jusan-dockerfile" .

docker run -d -p 6060:80 \
    --name jusan-dockerfile \
    nginx:jusan-dockerfile