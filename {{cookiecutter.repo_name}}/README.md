# {{ cookiecutter.project_name }}

{{ cookiecutter.description }}

## Quick Start

### Installation

```bash
make install
```

## Development Targets

```bash
make help           # Show all available commands
make install        # Install package with all dependencies
make test           # Run tests
make test-coverage  # Run tests with coverage report
make lint           # Run linting checks
make format         # Format code
make format-check   # Check if code is formatted
make pyright        # Run type checking
make check          # Run all checks (lint, format-check, type)
make clean          # Clean up build artifacts and virtual environment
```

### Jupyter

```bash
make jupyter        # Start Jupyter Lab
make notebook       # Start Jupyter Notebook
```

### Git Hooks

```bash
make pre-commit-install
```
