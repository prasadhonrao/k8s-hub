import flask
from flask import Flask, request, jsonify

app = Flask(__name__)

customers = [
    {'id': 1, 'name': 'John Doe'},
    {'id': 2, 'name': 'Jane Smith'},
    {'id': 3, 'name': 'Michael Johnson'},
    {'id': 4, 'name': 'Emily Davis'},
    {'id': 5, 'name': 'Christopher Lee'},
    {'id': 6, 'name': 'Olivia Brown'},
    {'id': 7, 'name': 'Daniel Wilson'},
    {'id': 8, 'name': 'Sophia Taylor'},
    {'id': 9, 'name': 'Matthew Martinez'},
    {'id': 10, 'name': 'Ava Anderson'},
]


@app.route('/', methods=['GET'])
def home():
    return '<H1>Customers API</H1>'

# A route to return all of the available entries in our catalog.
@app.route('/api/customers', methods=['GET'])
def api_all():
    return jsonify(customers)

@app.route('/api/customers/<int:id>', methods=['GET'])
def api_id(id):
    # Loop through the data and match results that fit the requested ID.
    # IDs are unique, but other fields might return many results
    results = [customer for customer in customers if customer['id'] == id]

    # Use the jsonify function from Flask to convert our list of
    # Python dictionaries to the JSON format.
    return jsonify(results)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
