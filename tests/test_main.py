from app.main import app

def test_home():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
    assert b'Hola Mundo' in response.data

def test_suma():
    client = app.test_client()
    response = client.get('/suma/3/5')
    data = response.get_json()
    assert response.status_code == 200
    assert data['resultado'] == 8
