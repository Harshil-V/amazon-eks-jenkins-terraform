#!/bin/bash
sudo yum -y update

echo "Installing Java JDK 8"
sudo yum remove -y java
sudo yum install -y java-1.8.0-openjdk

echo "Installing Maven"
sudo yum install -y maven

echo "Installing Git"
sudo yum install -y git

echo "Installing Docker Engine"
sudo yum update -y
sudo yum install -y docker
sudo systemctl enable docker
sudo systemctl start docker

echo "Installing Jenkins"
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install -y jenkins
sudo usermod -a -G docker jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
