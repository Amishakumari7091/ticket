from flask import Flask, render_template, request, redirect
import json

app = Flask(_name_)

@app.route('/')
def index():
    with open('events.json') as f:
        events = json.load(f)
    return render_template('index.html', events=events)

@app.route('/get_tickets', methods=['POST'])
def get_tickets():
    email = request.form['email']
    event_url = request.form['url']
    print(f"Email captured: {email}")  # Save to DB or send email
    return redirect(event_url)

if _name_ == '_main_':
    app.run(debug=True)