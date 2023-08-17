

  # Install Jenkins. However,Jenkins requires Java in order to run.
    sudo apt update
sudo apt install openjdk-17-jre
java -version
   
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

sudo usermod -aG docker jenkins  ( This is to enable jenkins user to execute docker commands)
sudo systemctl restart docker.service (To restart docker.service)
sudo echo "jenkins ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/jenkins

sudo systemctl daemon-reload  # To Register the Jenkins service 
sudo systemctl start jenkins
systemctl status jenkins

sudo vi /etc/passwd
