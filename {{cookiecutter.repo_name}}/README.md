# {{ cookiecutter.project_name }}

{{ cookiecutter.description }}

## Installation

```bash
uv add {{ cookiecutter.project_slug }}
```

## Development Setup

1. Clone the repository:
```bash
git clone <repository-url>
cd {{ cookiecutter.project_slug }}
```

2. Create a virtual environment and install dependencies:
```bash
uv venv
uv add --dev -e .
```

For Jupyter notebook support:
```bash
uv add --extra notebooks -e .
```

Or install everything (dev + notebooks):
```bash
uv add --all-extras -e .
```

### Dependency Management

This project uses **compatible release** specifiers (`~=`) for dependencies to ensure stability while allowing patch-level updates. For example:
- `pytest~=7.4.0` allows `7.4.x` but not `8.x`
- `ruff~=0.6.0` allows `0.6.x` but not `0.7.x`

This approach prevents breaking changes from major/minor version updates while still receiving bug fixes and security patches.

## Usage

```python
from {{ cookiecutter.package_name }} import main

main()
```

## Jupyter Notebooks

This project includes Jupyter notebook support for research and experimentation. Add your notebooks to the `notebooks/` directory.

### Running Notebooks

Start Jupyter Lab:
```bash
uv run jupyter lab
```

Or Jupyter Notebook:
```bash
uv run jupyter notebook
```

### Getting Started

Check out `notebooks/getting_started.ipynb` for setup instructions and examples of using this package in a notebook environment.

## Development

### Running Tests

```bash
uv run pytest
```

### Code Formatting & Linting

```bash
uv run ruff format .
```

### Linting

```bash
uv run ruff check .
```

### Type Checking

```bash
uv run pyright
```

## Git Hooks

This project includes git hooks to ensure code quality before pushing. Choose one of the following options:

### Option 1: Pre-commit (Recommended)

Install and set up pre-commit hooks:

```bash
uv run pre-commit install
```

This will run linting, formatting, and type checking on staged files before each commit.

### Option 2: Manual Git Hook

For pre-push validation, install the manual git hook:

```bash
cp hooks/pre-push .git/hooks/pre-push
chmod +x .git/hooks/pre-push
```

This will run linting, type checking, and tests before each push.

## License

This project is licensed under the {{ cookiecutter.license }} License.

## Author

**{{ cookiecutter.author_name }}** - {{ cookiecutter.author_email }}
