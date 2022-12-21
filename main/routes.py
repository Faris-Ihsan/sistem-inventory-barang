from main import app
import os
from flask import request, redirect, render_template

# a simple page that says hello
@app.route('/')
def index():
    return render_template('index.html')

