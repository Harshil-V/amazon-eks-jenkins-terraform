#!/bin/bash

# Add the Kubernetes repository
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

# Install kubectl
sudo yum install -y kubectl

# Install Halyard
# Note: As of the last update, the official way to install Halyard on Linux is through a Docker container.
# The following commands install Halyard's Docker container.
# Ensure Docker is installed and running before executing these commands.
curl -O https://raw.githubusercontent.com/spinnaker/halyard/master/install/stable/InstallHalyard.sh
sudo bash InstallHalyard.sh --user $(whoami) --version latest

# Clean up the installer script
# rm InstallHalyard.sh
