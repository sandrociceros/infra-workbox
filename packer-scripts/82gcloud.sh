
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb https://packages.cloud.google.com/apt ${CLOUD_SDK_REPO} main" > /etc/apt/sources.list.d/google-cloud-sdk.list
curl -0s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt-get update
apt-get install google-cloud-sdk -y

