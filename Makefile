TERRAFORM_VERSION := 1.0.0

.PHONY: container
container:
	docker build --tag kawaguchisan/terraform:${TERRAFORM_VERSION} .

.PHONY: registry
registry: container
	docker push kawaguchisan/terraform:${TERRAFORM_VERSION}
