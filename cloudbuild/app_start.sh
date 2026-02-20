cd /home/ubuntu/ae-manage
gsutil cp gs://tj-testing-bucket/config.manage-ae.env config.env

sudo docker build -t hello .
sudo docker run hello

