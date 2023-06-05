#Clone and install
git clone https://github.com/PromtEngineer/localGPT.git
cd localGPT
python3  -m venv localGPT
source localGPT/bin/activate
pip3 install -r requirements.txt

#Download models
mkdir models
cd models
wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin

#Put any and all your files into the SOURCE_DOCUMENTS directory, ingest them
python3 ingest.py

#Run a query 
python run_localGPT.py
