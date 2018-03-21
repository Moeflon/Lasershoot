#!/usr/bin/python3
from guizero import App, Text, PushButton
import requests

r = requests.get('http://193.191.169.45:8000/current_code')

app = App(bg = "red", width=1920, height=1080)
text = Text(app, text=r.json())
text.after(2000, app.destroy)
app.display()

