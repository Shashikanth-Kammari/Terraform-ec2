#!/bin/bash

# Log all output for troubleshooting
exec > >(tee /var/log/user-data.log | logger -t user-data) 2>&1

# echo "Updating the system..."
# dnf update -y

echo "Installing Java 17..."
dnf install -y java-17-amazon-corretto wget

echo "Adding Jenkins repository..."
wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

echo "Importing Jenkins GPG key..."
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "Installing Jenkins..."
dnf install -y jenkins

echo "Starting Jenkins service..."
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins

echo "Checking Jenkins status..."
systemctl status jenkins --no-pager

echo "Installation completed successfully."