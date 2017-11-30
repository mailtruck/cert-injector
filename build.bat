set GOARCH=amd64
set GOOS=linux

dos2unix.exe inject.sh

docker build -t mailtruck/cert-injector:latest .
docker push mailtruck/cert-injector:latest