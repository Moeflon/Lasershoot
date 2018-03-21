#!/usr/bin/python3
from guizero import App, Text, PushButton
import requests

r = requests.get('https://github.com/timeline.json')

app = App(bg = "red", width=1920, height=1080)
text = Text(app, text=r.json())
text.after(1000, app.destroy)
app.display()

