from main import app
import os
from flask import request, redirect, render_template

# a simple page that says hello
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/data_inventory')
def data_inventory():
    return render_template('data_inventory.html')

@app.route('/input_inventory')
def input_inventory():
    return render_template('input_inventory.html')

@app.route('/data_quarantine')
def data_quarantine():
    return render_template('data_quarantine.html')
    
@app.route('/data_release')
def data_release():
    return render_template('data_release.html')
