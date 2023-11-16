sudo add-apt-repository ppa:cncf-buildpacks/pack-cli -y
sudo apt-get update -y
sudo apt-get install pack-cli -y
#sudo apt update && sudo apt upgrade -y

wget https://github.com/buildpacks/samples/archive/refs/heads/main.zip
unzip main.zip
mv samples-main samples

pack build sample-app --path samples/apps/java-maven --builder cnbs/sample-builder:bionic

#test

#docker run -it europe-docker.pkg.dev/strong-network-images/workspaces/cloud_editor_generic:2.1.0
