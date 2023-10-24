apt update
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-451.0.1-linux-x86_64.tar.gz
tar -xf google-cloud-cli-451.0.1-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh --quiet
# ./google-cloud-sdk/bin/gcloud init
echo "export PATH=$PATH:$PWD/google-cloud-sdk/bin" >> ~/.bashrc
. ~/.bashrc
gcloud components update
gcloud components install kubectl