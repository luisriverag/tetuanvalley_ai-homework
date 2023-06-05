#Python3.10
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
#press enter
sudo apt update
sudo apt install python3.10
sudo apt install python3.10-distutils
sudo apt install python3.10-venv
sudo apt install python3.10-dev

#Clone and install
git clone https://github.com/imartinez/privateGPT.git
cd privateGPT
python3.10  -m venv privateGPT
source privateGPT/bin/activate
pip3 install -r requirements.txt
mkdir models
cd models
wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin
cd ..
#Copy or edit config variables 
cp example.env .env
#nano .env

#Put any and all your files into the source_documents directory, ingest them
python3 ingest.py

#Run a query 
python privateGPT.py
