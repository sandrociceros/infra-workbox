set -ex

TERRAFORM_VERSION=0.11.3

if [ ! -e /usr/local/bin/terraform ] ; then
  apt-get install -y unzip

  mkdir -p /tmp/terraform-download
  cd /tmp/terraform-download

  curl -Os https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
  unzip -q terraform_${TERRAFORM_VERSION}_linux_amd64.zip
  rm ./terraform_${TERRAFORM_VERSION}_linux_amd64.zip
  mv ./terraform /usr/local/bin/
else
  echo "terraform binary is already installed"
fi
