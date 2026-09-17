from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class Data(BaseModel):
    value: int


@app.post("/receiveData")
async def receive_data(data: Data):
    print(f"Dato recibido: {data.value}")

    return {
        "status": "ok",
        "value": data.value
    }