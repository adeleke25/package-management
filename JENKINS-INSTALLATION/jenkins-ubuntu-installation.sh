
# Jenkins Installation And Setup In AWS EC2 ubuntu Instance.
# Installation of Java
sudo apt update   # Update the repositories
sudo apt install openjdk-11-jdk
java -version
# Install Jenkins
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
# Start Jenkins
# Add jenkins user to docker group
sudo usermod -aG docker jenkins  ( This is to enable jenkins user to execute docker commands)
sudo systemctl restart docker.service (To restart docker.service)
sudo echo "jenkins
sudo systemctl daemon-reload  # To Register the Jenkins service 
sudo systemctl start jenkins
systemctl status jenkins
