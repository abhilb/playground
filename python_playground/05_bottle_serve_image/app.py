from bottle import run, request, route, template, Bottle, static_file
import os
import sqlite3

app = Bottle()
root_path = os.path.dirname(os.path.realpath(__file__))
print root_path

static_files_path = os.path.join(root_path, 'static')
print static_files_path

@app.route('/static/<filename>')
def server_static(filename):
    print "sending " + filename
    return static_file(filename, root=static_files_path)

@app.route('/getimage')
def getimage():
    print "Got get image request received... "
    conn = sqlite3.connect('test.db')
    cur = conn.cursor()

    cur.execute('''select image from images''')
    blob = cur.fetchone()

    print len(blob[0])
    print type(blob)

    cur.close()
    conn.close()

    return blob[0]

@app.route('/')
def index():
    return template('index')

if __name__ == '__main__':
    if(os.path.exists('test.db')):
            os.remove('test.db')
    conn = sqlite3.connect('test.db')
    conn.execute('''
    CREATE TABLE images 
    (key TEXT PRIMARY KEY, image BLOB);
    ''')

    with open(os.path.join(static_files_path, "testimage.png"), 'rb') as f:
        blob = f.read()
        conn.execute('''INSERT INTO images (image) VALUES(?);''', [sqlite3.Binary(blob)])

    conn.commit()
    conn.close()

    run(app, Debug=True, reloader=True)    
