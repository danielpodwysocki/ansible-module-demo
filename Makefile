venv/bin/activate:
	python3 -m venv venv
	. venv/bin/activate; pip install -Ur requirements.txt

# bring up the compose stack with snipe-it
dev:
	docker-compose up -d

# resets to a basic setup with the admin user set to admin:password
setup-db:
	docker-compose stop snipe-it
	docker-compose exec mysql bash -c "mysql -u root -pYOUR_SUPER_SECRET_PASSWORD snipeit < /db.dump"
	docker-compose start snipe-it

# warning! includes volumes
down:
	docker-compose down --volumes

clean:
	docker-compose down --volumes
	rm -rf venv