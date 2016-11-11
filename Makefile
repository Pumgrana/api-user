PROJECT_NAME := api-user
REGISTRY := docker.pumgrana.com

docker:
	docker build -t $(PROJECT_NAME) .

push:
	docker tag $(PROJECT_NAME) $(REGISTRY)/$(PROJECT_NAME)
	docker push $(REGISTRY)/$(PROJECT_NAME)

pull:
	docker pull $(REGISTRY)/$(PROJECT_NAME)

freeze:
	$(eval VERSION = $(shell date +%Y%m%d%H))
	$(eval FULL_NAME = $(REGISTRY)/$(PROJECT_NAME):$(VERSION))
	docker tag $(PROJECT_NAME) $(FULL_NAME)
	docker push $(FULL_NAME)
