from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify(
        status="success",
        message="Hello from Docker! Phase 1 is complete."
    )

if __name__ == '__main__':
    # Host '0.0.0.0' is crucial so it works inside the Docker container
    app.run(host='0.0.0.0', port=5000)