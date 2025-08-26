.PHONY: help install clean test lint format pyright check pre-commit-install jupyter notebook

# Default target
help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: pre-commit-install ## Install the package with all dependencies
	uv venv
	uv sync --all-extras

clean: ## Clean up build artifacts and virtual environment
	@echo "🧹 Cleaning up..."
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info/
	rm -rf .pytest_cache/
	rm -rf .ruff_cache/
	rm -rf .mypy_cache/
	rm -rf .venv/
	find . -type d -name __pycache__ -delete
	find . -type f -name "*.pyc" -delete
	@echo "✅ Cleanup completed"

test: ## Run tests
	uv run pytest

test-coverage: ## Run tests with coverage report
	uv run pytest --cov={{ cookiecutter.package_name }} --cov-report=html --cov-report=term

lint: ## Run linting checks
	uv run ruff check .

format: ## Format code
	uv run ruff format .

format-check: ## Check if code is formatted
	uv run ruff format --check .

pyright: ## Run type checking
	uv run pyright

check: lint format-check pyright ## Run all checks (lint, format, type)

pre-commit-install: ## Install pre-commit hooks
	uv run pre-commit install

jupyter: ## Start Jupyter Lab
	uv run jupyter lab

notebook: ## Start Jupyter Notebook
	uv run jupyter notebook
