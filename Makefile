build:
	docker-compose -f docker-compose.yml build --no-cache

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down

cdk:
	docker-compose -f docker-compose.yml exec cdk sh
