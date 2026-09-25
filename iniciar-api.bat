@echo off
if not exist .venv (
    echo Criando ambiente virtual...
    python -m venv .venv
)
call .venv\Scripts\activate
pip install -r requirements.txt
uvicorn app.main:app --reload --port 8000
pause
