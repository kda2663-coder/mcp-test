from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "MCP Server is running successfully!"}

@app.get("/mcp")
def mcp_endpoint():
    return {"status": "ok", "message": "This is MCP endpoint"}
