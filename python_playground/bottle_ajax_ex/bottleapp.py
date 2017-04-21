
import json
from bottle import run, request, route, template, Bottle

app = Bottle()

@app.route('/', method="post")
def ajaxTest():
    print 'received request for json data'
    return json.dumps({"test" : "test data"})

@app.route('/')
def index():
    print 'home page'
    return template('index')

if __name__ == "__main__":
    run(app, debug=True)    
