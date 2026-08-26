.PHONY: help all generate test clean

# Default target
help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

all: clean generate test clean ## Run full template test suite

generate: clean ## Generate a test project from the template
	@echo '{"project_name": "Test ML Package", "author_name": "Test Author", "author_email": "test@example.com", "description": "A test ML package", "version": "0.1.0", "python_version": "3.12", "license": "MIT"}' > test_config.json
	@uvx --native-tls cookiecutter . --no-input --config-file test_config.json --output-dir ./test_output
	@rm test_config.json

test: clean generate ## Run tests on the generated project
	@cd test_output/my-ml-package && git init
	@cd test_output/my-ml-package && make clean install check test

clean: ## Clean up generated test files
	@rm -rf test_output/
	@rm -f test_config.json