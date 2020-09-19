from typing import Optional

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/items/{s}")
def read_item(s: str):
    return {"s": s}


# implement a POST method to accept a string argument
# (multiline file) which can be passed to libpostal
