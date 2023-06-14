sudo add-apt-repository ppa:cncf-buildpacks/pack-cli -y
sudo apt-get update -y
sudo apt-get install pack-cli -y

wget https://github.com/buildpacks/samples/archive/refs/heads/main.zip
unzip main.zip
mv samples-main samples

pack build sample-app --path samples/apps/java-maven --builder cnbs/sample-builder:bionic


#docker run -it europe-docker.pkg.dev/strong-network-images/workspaces/cloud_editor_generic:2.1.0