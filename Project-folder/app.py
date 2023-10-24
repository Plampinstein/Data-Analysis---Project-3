import numpy as np
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
from flask import Flask, render_template

#setup database
engine = create_engine("my path to database")

# reflect an existing database into a new model
Base = automap_base()
# reflect the tables
Base.prepare(autoload_with=engine)

#save reference to the table
table_name = base.classes.table_name

app = Flask(__name__)

@app.route('/')
def index():
    # This is the route that will render your HTML template.
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)