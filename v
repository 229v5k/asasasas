import os
from flask import Flask, flash, request, redirect, url_for
from werkzeug.utils import secure_filename
@app.route('/login', methods=['GET', 'POST'])
def login():
username = request.form.get['username']
password = request.form.get['password']
result = tryLogin(username, password)
if (result == True):
proceedWithAuthorization()
else:
rejectUser()
