# tests/test_app.py
from app.main import app

def test_home():
    client = app.test_client()
    res = client.get('/')
    assert res.status_code == 200
    assert b"AutoDeployx app is running locally" in res.data
