.PHONY: docker-build run-dev

IMAGE_NAME=test-dbi
CONTAINER_NAME=test-db

docker-build:
	docker build -t $(IMAGE_NAME) .

run-dev:
	docker run -d -p 5432:5432 --name $(CONTAINER_NAME) $(IMAGE_NAME)
