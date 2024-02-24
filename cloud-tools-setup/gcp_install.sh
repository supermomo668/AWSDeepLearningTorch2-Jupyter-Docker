apt update
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-451.0.1-linux-x86_64.tar.gz
tar -xf google-cloud-cli-451.0.1-linux-x86_64.tar.gz -C /usr/local
/usr/local/google-cloud-sdk/install.sh --quiet
# ./google-cloud-sdk/bin/gcloud init
echo "export PATH=$PATH:/usr/local/google-cloud-sdk/bin" >> ~/.bashrc
. ~/.bashrc
gcloud components update --quiet
gcloud components install kubectl --quiet
gcloud components install gke-gcloud-auth-plugin --quiet