cd /home/ubuntu/ae-manage
gsutil cp gs://tj-testing-bucket/config.manage-ae.env config.env

docker build -t hello .
docker run hello

