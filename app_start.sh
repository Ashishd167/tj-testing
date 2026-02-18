cd /home/ubuntu/ae-manage
gsutil cp gs://${CREDS_BUCKET:-tj-creds}/config.manage-ae.env config.env

docker build -t hello .
docker run hello
