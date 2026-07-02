.PHONY: help all generate test clean lint validate

# Default target
help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

all: clean generate test clean ## Run full template test suite

generate: ## Generate a test project from the template
	@echo '{"project_name": "Test ML Package", "author_name": "Test Author", "author_email": "test@example.com", "description": "A test ML package", "version": "0.1.0", "python_version": "3.12", "license": "MIT"}' > test_config.json
	@uvx --native-tls cookiecutter . --no-input --config-file test_config.json --output-dir ./test_output
	@rm test_config.json

test: ## Run tests on the generated project
	@cd test_output/my-ml-package && uv venv
	@cd test_output/my-ml-package && uv sync --native-tls --all-extras
	@cd test_output/my-ml-package && uv run python -c "import my_ml_package; my_ml_package.main()"
	@cd test_output/my-ml-package && uv run pytest
	@cd test_output/my-ml-package && uv run ruff check .
	@cd test_output/my-ml-package && uv run ruff format .
	@cd test_output/my-ml-package && uv run pyright

lint: ## Lint the template files
	@find . -name "*.py" -path "./{{cookiecutter.repo_name}}/*" -exec uvx ruff check {} \; || true

clean: ## Clean up generated test files
	@rm -rf test_output/
	@rm -f test_config.json

validate: ## Validate cookiecutter template structure
	@echo "🔍 Validating template structure..."
	@test -f cookiecutter.json || (echo "❌ cookiecutter.json not found" && exit 1)
	@test -d "{{cookiecutter.repo_name}}" || (echo "❌ Template directory not found" && exit 1)
	@test -f "{{cookiecutter.repo_name}}/pyproject.toml" || (echo "❌ pyproject.toml template not found" && exit 1)
	@test -f "{{cookiecutter.repo_name}}/{{cookiecutter.package_name}}/__init__.py" || (echo "❌ Package __init__.py template not found" && exit 1)
