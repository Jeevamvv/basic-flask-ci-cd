from flask import Flask


print("hello")
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Flask CI/CD using Docker and Jenkins!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)


print("jeevan mv ")
