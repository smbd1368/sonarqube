
instalation_dir=~/SonarScannerCLI
if [ -d $instalation_dir ];then
    mkdir -p $instalation_dir
fi

echo "########## INSTALLING SONAR SCANNER ##########"
printf "Downloading... "
wget -q https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.3.0.1492-linux.zip
printf "Complete!\n"

printf "Unpacking file... "
unzip -q sonar-scanner-cli-3.3.0.1492-linux.zip
rm sonar-scanner-cli-3.3.0.1492-linux.zip
printf "Complete!\n"

echo "Installing on "$instalation_dir
sudo mv sonar-scanner-3.3.0.1492-linux $instalation_dir

echo "Adding Sonar Scanner to PATH..."
echo 'export PATH="'$instalation_dir'/bin:$PATH"' >> ~/.bashrc

echo "Installation Complete."
echo "For more information, visit: https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner"
echo "To use sonar-scanner command, open a new terminal or run: source ~/.bashrc"

echo "---------------------------------------"
echo "+ URL:        localhost:9000          +"
echo "+ user:       admin                   +"
echo "+ password:   admin                   +"
echo "---------------------------------------"

#https://gist.github.com/John-Alves/ab70c4198fbf6a2d98bd7d8459e92a1e
#sudo docker run  -p 9000:9000 -p 9092:9092 sonarqube

