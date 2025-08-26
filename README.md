# ML Python Package Cookiecutter Template

[![Test Template](https://github.com/mhasanbulli/ml-py-package-template/actions/workflows/test-template.yml/badge.svg)](https://github.com/mhasanbulli/ml-py-package-template/actions/workflows/test-template.yml)

A bare bones cookiecutter template for creating Python machine learning packages.

## Requirements

This template requires [uv](https://github.com/astral-sh/uv) to be installed on your system:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Usage

1. Generate a new project:
```bash
uvx cookiecutter https://github.com/mhasanbulli/ml-py-package-template
```

2. Follow the prompts to customise your project.

## Template Variables

- `project_name`: Human-readable name of your project
- `repo_name`: Repository/folder name with dashes (automatically generated from project_name)
- `project_slug`: Machine-readable name with underscores (automatically generated from project_name)
- `package_name`: Python package name (automatically generated from project_slug)
- `author_name`: Your name
- `author_email`: Your email address
- `description`: Brief description of your project
- `version`: Initial version number (default: 0.1.0)
- `python_version`: Minimum Python version (default: 3.12)
- `license`: License type (default: MIT)

## What's Included

- Modern `pyproject.toml` configuration with **compatible release versioning**
- Basic package structure with `__init__.py`
- Sample main module with type hints
- Comprehensive `.gitignore` for Python projects
- Basic test structure with pytest
- Development dependencies (pytest, ruff, pyright, pre-commit)
- **Jupyter notebook support** for research and experimentation
- Example notebook with dependency setup instructions
- Notebook dependencies (JupyterLab, matplotlib, seaborn, plotly)
- **Git hooks** for code quality (pre-commit and manual options)
- **Stable dependency management** using `~=` versioning for predictable builds
- Professional README template

## Testing the Template

This repository includes a Makefile for testing the cookiecutter template:

```bash
# Run the full test suite
make all

# Show all available commands
make help

# Just validate template structure
make validate

# Generate a test project for manual inspection
make generate

# Clean up test artifacts
make clean
```

The test suite will:
1. Generate a test project from the template using `uvx cookiecutter`
2. Create a virtual environment using `uv venv`
3. Install dependencies using `uv add`
4. Run the package using `uv run` to ensure it works
5. Execute pytest tests using `uv run pytest`
6. Run ruff linting and formatting checks using `uv run ruff`
7. Run pyright type checking using `uv run pyright`
8. Clean up afterwards

All testing is done with uv for fast and reliable dependency management.

## Continuous Integration

The template includes a GitHub Actions workflow that automatically:
- **Validates** the template structure
- **Tests** on multiple operating systems (Ubuntu, macOS, Windows)
- **Tests** on multiple Python versions (3.12, 3.13)
- **Generates** test projects and runs their full test suites
- **Lints** template files using ruff

The workflow uses uv's official GitHub Actions for fast, reliable dependency management in CI/CD.
