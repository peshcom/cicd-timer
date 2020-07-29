#! /usr/bin/env python3

import flask
import os
import random

app = flask.Flask(
	__name__,
	static_folder='static/',
	template_folder='templates/'
)

@app.route("/")
def index():
	return flask.render_template('index.html')

if __name__ == "__main__":
	app.run(host='0.0.0.0', port=os.getenv('PORT'), debug=True)