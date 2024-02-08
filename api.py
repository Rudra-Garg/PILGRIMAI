# api from main flask

from flask import Flask, jsonify, request
from flask_restful import Resource, Api
import main

app = Flask(__name__)
api = Api(app)


class Chat(Resource):

    def get(self, message):
        prompt = message[3:]
        id = message[:3]
        return jsonify(main.doChat(message, id))


api.add_resource(Chat, '/chat/<string:message>')
if __name__ == '__main__':
    app.run()
