from flask import Flask

import easygopigo3

app = Flask(__name__)

gpg3 = EasyGoPiGo3()

@app.route('/')
def index():
     return 'It worked!'

@app.route('/forward')
def forward(): 
   print("forward")
   gpg3.forward()
   return 'forward'

@app.route('/backward')
def backward(): 
   print("backward")
   gpg3.backward()
   return 'backward'

@app.route('/left')
def left(): 
   print("left")
   gpg3.left()
   return 'left'

@app.route('/right')
def right(): 
   print("right")
   gpg3.right()
   return 'right'

@app.route('/stop')
def index(): 
   print("stop")
   gpg3.stop()
   return 'stop'
   
if __name__ == "__main__":
    app.run(debug = True, host='0.0.0.0',Port=5000)