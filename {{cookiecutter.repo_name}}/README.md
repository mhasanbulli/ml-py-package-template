# {{ cookiecutter.project_name }}

{{ cookiecutter.description }}

## Quick Start

```bash
# Set up development environment (installs all dependencies + pre-commit hooks)
make dev

# Or just install dependencies
make install
```

## Development Commands

This project includes a Makefile with common development tasks:

```bash
make help             # Show all available commands
make dev              # Set up development environment (install + pre-commit hooks)
make install          # Install package with all dependencies
make test             # Run tests
make test-coverage    # Run tests with coverage report
make lint             # Run linting checks
make format           # Format code
make format-check     # Check if code is formatted
make pyright          # Run type checking
make check            # Run all checks (lint, format-check, type)
make clean            # Clean up build artifacts and virtual environment
```

## Jupyter Notebooks

Start Jupyter for interactive development:

```bash
make jupyter          # Start Jupyter Lab (recommended)
make notebook         # Start Jupyter Notebook (classic interface)
```

The `notebooks/` directory contains example notebooks to get you started. All notebook dependencies are automatically installed when you run `make install`.

## Git Hooks

Set up pre-push hooks for automatic code quality checks:

```bash
make pre-commit-install
```

This will run linting, formatting, and type checking before each push, ensuring code quality without slowing down local commits.
