#!/usr/bin/python3
from guizero import App, Text, PushButton
app = App(bg = "red", width=1920, height=1080)
text = Text(app, text="fu")
text.after(1000, app.destroy)
app.display()

