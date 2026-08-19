from flask import Flask
from flask_talisman import Talisman
from flask_cors import CORS

# Create Flask application
app = Flask(__name__)

# Initialize Talisman with security headers
talisman = Talisman(app)

# Initialize CORS
CORS(app)

from service import routes, models, common
