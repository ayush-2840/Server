from flask import Flask, request, jsonify
import requests

app = Flask(__name__)

@app.route('/post', methods=['POST'])
def post_to_facebook():
    data = request.get_json()
    access_token = data['accessToken']
    post_message = data['postMessage']
    
    post_url = 'https://graph.facebook.com/v11.0/me/feed'
    payload = {
        'message': post_message,
        'access_token': access_token
    }

    response = requests.post(post_url, data=payload)
    
    if response.status_code == 200:
        return jsonify({'success': True}), 200
    else:
        return jsonify({'success': False, 'error': response.json()}), 400

if __name__ == '__main__':
    app.run(port=5003)
