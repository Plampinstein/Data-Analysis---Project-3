from flask import Flask, render_template, jsonify
import os
import csv
import json

app = Flask(__name__)

@app.route('/')
def index():
    # This is the route that will render your HTML template.
    return render_template('index.html')

@app.route('/api/1')
def api1():
    # This is the route that will render your HTML template.
    data_list = []
    csvpath = "static/comulative daily cases 2021.csv"
    with open(csvpath) as csvfile:
        csvheader = next(csvfile)
        for row in csvfile:
            data_dict = {
             csvheader[0]: row[1],
             csvheader[1]: row[2] 
            }

        data_list.append(data_dict)

    return jsonify(data_list)

if __name__ == '__main__':
    app.run(debug=True)