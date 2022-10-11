image:
	docker build -t go-redis:0.1 .
up: 
	docker-compose up 
down: 
	docker-compose down
play: build
	podman play kube goRedis.yaml
