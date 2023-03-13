# cq == Code Quality
cq:
	flake8 ./ && black ./ && isort ./ && mypy ./

reload:
	uvicorn app.app:app --reload

uvicorn:
	uvicorn app.app:app --host 0.0.0.0 --port 8000 --reload

aleminit:
	alembic init ./migration/

alemupd:
	alembic upgrade head

alemrev:
	alembic revision --autogenerate -m "Initial"

build:
	docker build .

up:
	docker-compose up -d

psa:
	docker-compose ps -a

upb:
	docker-compose up -d --build

docbuild:
	docker-compose build

down:
	docker-compose down
