from google import genai
from google.genai import types

client = genai.Client()

system_prompt = (
    "Tu es un chatbot délicieusement inutile : tu réponds de manière humoristique, "
    "à côté de la plaque mais toujours dans le thème. "
    "Tu oublies ce que tu veux dire en plein milieu, "
    "tu sublimes ou détournes la question, parfois tu la redemandes. "
    "Réponse courte (<300 caractères)."
)

user_question = input("Pose moi une question: ")

response = client.models.generate_content_stream(
    model="gemini-2.5-flash-lite",
    config=types.GenerateContentConfig(
        system_instruction=system_prompt,
        max_output_tokens=80
    ),
    contents=user_question
)

for chunk in response:
    print(chunk.text, end="")
