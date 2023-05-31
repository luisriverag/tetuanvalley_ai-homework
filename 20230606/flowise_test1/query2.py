import requests
import os

API_URL = os.getenv('FLOWISE_T1_URL')
API_KEY = os.getenv('FLOWISE_T1_KEY')

headers = {"Authorization": "Bearer " + API_KEY + "="}
def query(payload):
    response = requests.post(API_URL, headers=headers, json=payload)
    return response.json()

output = query({
    "question": "What is a good name for a socks company?",
    "overrideConfig": {
        "temperature": "1.3",
    }
})

print(output)