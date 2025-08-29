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
make install          # Install package with all dependencies
make test             # Run tests
make test-coverage    # Run tests with coverage report
make check            # Run format, lint and type check
make format           # Run format and lint
make pyright          # Run type checking
make hooks            # Run pre-commit git hooks on all files
make clean            # Clean up build artifacts and virtual environment
```

To see the full list, issue `make help` in your terminal.

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
make pre-commit
```

This will run linting, formatting, and type checking before each push.
