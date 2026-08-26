# {{ cookiecutter.project_name }}

{{ cookiecutter.description }}

## Quick Start

```bash
# Set up development environment (installs all dependencies + pre-commit hooks)
make dev

# Or just install dependencies
make install
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
