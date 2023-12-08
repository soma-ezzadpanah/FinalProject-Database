# Imports
from flask import Flask, render_template, request, redirect, url_for, session, flash
import mysql.connector
import os

# App settings
app = Flask(__name__)
app.config['SECRET_KEY'] = 'YourSecretKey'
app.config['SESSION_COOKIE_NAME'] = 'user_session'

# DB connections
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Feather1!",
    database="Library_Mgmt_Sys"
)
cursor = db.cursor()

# Check username and password
def query_database(username, password):
    query = "SELECT * FROM LibraryUsers  WHERE Username=%s AND Password=%s"
    cursor.execute(query, (username, password))
    result = cursor.fetchone()
    return result

# Search for books in the database
def search_books(criteria, search_term):
    query = f"SELECT * FROM Librarybooks WHERE {criteria} LIKE %s"
    cursor.execute(query, ('%' + search_term + '%',))
    results= cursor.fetchall()
    # Extract column names from cursor.description
    columns = [col[0] for col in cursor.description]
    # Convert each tuple to a dictionary
    return [dict(zip(columns, row)) for row in results]


# Login route
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user = query_database(username, password)
        if user is not None:
            session['username'] = username
            return redirect(url_for('search'))
        else:
            flash('Invalid username or password')
    return render_template('login.html')

# Search route
@app.route('/search', methods=['GET', 'POST'])
def search():
    if 'username' in session:
        if request.method == 'POST':
            criteria = request.form['criteria']
            search_term = request.form['search_term']
            print(f"Criteria: {criteria}, Search Term: {search_term}")  # This will print the form data

            books = search_books(criteria, search_term)
            return render_template('search_results.html', books=books)
        return render_template('search.html')
    else:
        return redirect(url_for('login'))

# Logout route
@app.route('/logout')
def logout():
    session.pop('username', None)
    return redirect(url_for('login'))

# Home page
@app.route('/')

def home():
    return render_template('home.html')

if __name__ == '__main__':
    app.run(debug=True)
