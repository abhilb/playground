from bottle import run, request, route, template, Bottle, static_file
import os

app = Bottle()
root_path = os.path.dirname(os.path.realpath(__file__))
print root_path

static_files_path = os.path.join(root_path, 'static')
print static_files_path

@app.route('/static/<filename>')
def server_static(filename):
    print "sending " + filename
    return static_file(filename, root=static_files_path)

@app.route('/')
def index():
    return template('index')

if __name__ == '__main__':
    run(app, Debug=True, reloader=True)    
