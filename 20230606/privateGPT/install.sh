#Clone and install
git clone https://github.com/imartinez/privateGPT.git
cd privateGPT
python3  -m venv tutorial-env
source tutorial-env/bin/activate
pip3 install -r requirements.txt

#Copy or edit config variables 
cp example.env .env
#nano .env

#Put any and all your files into the source_documents directory, ingest them
python3 ingest.py

#Run a query 
python privateGPT.py
