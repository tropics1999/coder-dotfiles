#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo apt update
sudo apt install -y
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
export KUBECONFIG=~/coder/.kube/config
export SOPS_AGE_KEY_FILE=~/coder/age.agekey
brew install fluxcd/tap/flux