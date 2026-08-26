# ML Python Package Cookiecutter Template

[![Test Template](https://github.com/mhasanbulli/ml-py-package-template/actions/workflows/test-template.yml/badge.svg)](https://github.com/mhasanbulli/ml-py-package-template/actions/workflows/test-template.yml)

A bare bones cookiecutter template for creating Python machine learning packages.

## Requirements

- [uv](https://github.com/astral-sh/uv) v0.5+
- `make`

## Usage

To generate a new project

```bash
uvx cookiecutter https://github.com/mhasanbulli/ml-py-package-template
```

## What's Included

- `pyproject.toml` configuration with compatible release versioning
- `.gitignore` for Python projects
- Testing with `pytest`
- Development dependencies: pytest, ruff, pyright, pre-commit
- Jupyter notebook support
- Example notebook with dependency setup instructions
- Git hooks for code quality (pre-commit and manual)