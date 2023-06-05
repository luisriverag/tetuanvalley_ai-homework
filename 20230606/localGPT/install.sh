#Python3.10
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
#press enter
sudo apt update
sudo apt install python3.10
sudo apt-install python3.10-distutils
sudo apt-install python3.10-dev
sudo apt install python3.10-venv

#Clone and install
git clone https://github.com/PromtEngineer/localGPT.git
cd localGPT
python3.10  -m venv localGPT_venv
source localGPT_venv/bin/activate
pip install -r requirements.txt

#Download models
mkdir models
cd models
wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin

#Put any and all your files into the SOURCE_DOCUMENTS directory, ingest them
python3 ingest.py

#Run a query 
python run_localGPT.py
