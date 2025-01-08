#!/bin/bash
sudo docker rmi -f $(sudo docker images -q) ##this is not recommned step, i am deleting existing images to save space
sudo rm -r gold ## these steps are not recommened instead you can modify script as shown below
sudo mkdir gold
cd gold/
sudo git clone https://github.com/bharadwaj211194/Gold_Site_Ecommerce.git
cd Gold_Site_Ecommerce/
sudo docker build -t react-nginx -f golddockerfile .
sudo docker tag react-nginx:latest bharadwaj2194/react-docker:latest ##make sure you did docker login
sudo docker push bharadwaj2194/react-docker:latest

##recommended script###
#!/bin/bash
#cd gold/Gold_Site_Ecommerce
#sudo git pull
#sudo docker build -t react-nginx -f goldockerfile .
#sudo docker tag react-nginx:latest reactdemo/react-nginx:latest ##make sure you did docker login
#sudo docker push reactdemo/react-nginx:latest
