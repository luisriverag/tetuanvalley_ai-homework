#Clone and install
git clone https://github.com/imartinez/privateGPT.git
cd privateGPT
python3  -m venv privateGPT
source privateGPT/bin/activate
pip3 install -r requirements.txt
#Download models
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
