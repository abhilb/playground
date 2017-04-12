from bottle import run, route
from bottle import jinja2_view

@route('/', name='home')
@jinja2_view('home.html', template_lookup=['template'])
def home():
    return template()


if __name__ == '__main__':
    run(debug=True)


