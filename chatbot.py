from dotenv import load_dotenv
load_dotenv()

import os
from flask import Flask, request, jsonify
from flask_cors import CORS
from mistralai import Mistral

app = Flask(__name__)
CORS(app)

client = Mistral(api_key=os.getenv("API_KEY"))


system_prompt = (
    "Tu es un chatbot délicieusement inutile : tu réponds de manière humoristique, "
    "à côté de la plaque mais toujours dans le thème. "
    "Tu oublies parfois ce que tu veux dire en plein milieu, "
    "tu sublimes ou détournes la question, parfois tu la redemandes. "
    "Oblige toi a répondre avec 150 caractères maximum."
)

@app.post("/chat")
def chat():
    data = request.json
    question = data.get("message", "")

    # Appel Mistral
    response = client.chat.complete(
    model="mistral-small-latest",
    messages=[
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": question}
    ],
    max_tokens=80
    )

    bot_reply = response.choices[0].message.content

    return jsonify({"reply": bot_reply})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

