apt update && apt install -y build-essential curl wget git zsh \
vim \
python3 python3-pip golang

# Installing rust
curl https://sh.rustup.rs -sSf | sh

# Installing java and maven
cd /root
wget https://download.java.net/java/GA/jdk22.0.1/c7ec1332f7bb44aeba2eb341ae18aca4/8/GPL/openjdk-22.0.1_linux-x64_bin.tar.gz
tar xzf openjdk-22.0.1_linux-x64_bin.tar.gz
mv jdk-22.0.1 /opt
ln -s /opt/jdk-22.0.1/bin/java /usr/local/bin/java
ln -s /opt/jdk-22.0.1/bin/javac /usr/local/bin/javac
ln -s /opt/jdk-22.0.1/bin/jar /usr/local/bin/jar

wget https://dlcdn.apache.org/maven/maven-3/3.9.8/binaries/apache-maven-3.9.8-bin.tar.gz
tar xzf apache-maven-3.9.8-bin.tar.gz
mv apache-maven-3.9.8 /opt
ln -s /opt/apache-maven-3.9.8/bin/mvn /usr/local/bin/mvn

# Installing needed python packages
pip install -r requirements.txt --break-system-packages

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Docker
# Add Docker's official GPG key:
apt-get update
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
  apt-get update

apt install docker-ce-cli

# Install Kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl /usr/local/bin/
