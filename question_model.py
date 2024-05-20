import requests
import json


url = "http://localhost:8000/v1/chat/completions"
headers = {
    "Content-Type": "application/json"
}
data = {
    "messages": [
        {
            "role": "user",
            "content": "Qual diferencial do modelo de LLM Llama para outros."
        }
    ]
}

response = requests.post(url, headers=headers, json=data)

if response.status_code == 200:
    response_json = response.json()
    response_formatted = json.dumps(response_json, ensure_ascii=False, indent=4)
    
    print(response_json["choices"][0]["message"]["content"])
    print('*'*50)
    print(response_formatted)
else:
    print(f"Erro: {response.status_code}")
    print(response.text)
