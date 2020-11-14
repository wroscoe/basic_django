
prod:
	docker-compose -f docker-compose.prod.yml up -d --build

dev_migrate:
	docker-compose exec web python manage.py flush --no-input
	docker-compose exec web python manage.py migrate


logs:
	docker-compose logs -f

dev:
	docker-compose up -d

dev_migrate:
	docker-compose exec web python manage.py flush --no-input
	docker-compose exec web python manage.py migrate

down:
	docker-compose -f docker-compose.prod.yml down -v