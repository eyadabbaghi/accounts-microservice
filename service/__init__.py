from flask import Flask
from flask_talisman import Talisman
from flask_cors import CORS

app = Flask(__name__)

# Initialize Talisman for HTTP security headers
talisman = Talisman(app)

# Initialize CORS
CORS(app)

from service import routes
