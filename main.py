import vertexai
from vertexai.preview.language_models import ChatModel, ChatMessage

from flask import Flask, render_template, request, jsonify
from context import context
from example import examples, message_history
import random

app = Flask(__name__, template_folder="templates")


@app.route("/")
def hello():
    return render_template('index.html')


def doChat(prompt, ID):
    if ID not in message_history.keys():
        message_history[ID] = []
    vertexai.init(project="modular-house-407813", location="asia-southeast1")

    chat_model = ChatModel.from_pretrained("chat-bison")
    if prompt == 'CLEAR MESSAGE HISTORY':
        message_history[ID] = []

    parameters = {"candidate_count": 1,
                  "max_output_tokens": 2048,
                  "temperature": 1,
                  "top_p": 1,
                  "top_k": 40
                  }

    chat = chat_model.start_chat(context=context, examples=examples, message_history=message_history[ID])

    response = chat.send_message(prompt, **parameters)

    message_history[ID].append(ChatMessage(author="user", content=prompt))
    message_history[ID].append(ChatMessage(author="bot", content=response.text))

    return response


@app.route('/chat', methods=['POST', 'GET'])
def chat():
    if request.method == 'POST':
        data = request.json
        sessionID = data.get('SID')
        prompt = data.get('message')
        result = doChat(prompt, sessionID).text
        return result


@app.route('/SID', methods=['POST', 'GET'])
def SID():
    characters = list("abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    random.shuffle(characters)
    return jsonify(''.join(characters[:20]))


if __name__ == '__main__':
    app.run(debug=True)

