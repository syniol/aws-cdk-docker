build:
#	docker-compose -f docker-compose.build.yml build --no-cache
	docker-compose -f docker-compose.yml pull

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down

cdk:
	docker-compose -f docker-compose.yml exec cdk sh
