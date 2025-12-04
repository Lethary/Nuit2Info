from flask import Flask, request, jsonify
from google import genai
from google.genai import types
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # <---- IMPORTANT

client = genai.Client()

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

    response = client.models.generate_content(
        model="gemini-2.5-flash-lite",
        config=types.GenerateContentConfig(
            system_instruction=system_prompt,
        ),
        contents=question
    )

    return jsonify({"reply": response.text})

if __name__ == "__main__":
    app.run(debug=True, port=5000)
