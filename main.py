import os
from flask import Flask
from flask import send_from_directory

app = Flask(__name__)


@app.route('/')
def hello_world():
  return '<a href="/download">View file</a>'

@app.route('/download')
def download():
  uploads = '/home/runner/manim-repl/manim/media/videos/example_scenes/720p30/'
  return send_from_directory(directory=uploads, filename='SquareToCircle.mp4')

if __name__ == '__main__':
  app.run(host='0.0.0.0', port='3000')