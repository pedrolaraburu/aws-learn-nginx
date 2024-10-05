from fastapi import FastAPI
import uvicorn
app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello World from FastAPI in Docker!"}

@app.post("/process")
def process_data(number: int):
    processed_data = {"result": number * 2}
    return processed_data

if __name__ == '__main__': 
    uvicorn.run(app, host="0.0.0.0", port=8000)