# Notebooks

This directory contains Jupyter notebooks for research, experimentation, and analysis.

## Setup

To use the notebooks, install the notebook dependencies:

```bash
uv add --extra notebooks -e .
```

Or install everything (dev + notebooks):

```bash
uv add --all-extras -e .
```

## Running Notebooks

### Jupyter Lab (recommended)
```bash
uv run jupyter lab
```

### Jupyter Notebook
```bash
uv run jupyter notebook
```

## Getting Started

Check out `getting_started.ipynb` for setup instructions and examples of using this package in a notebook environment.

## Best Practices

1. **Name notebooks descriptively** (e.g., `data_exploration.ipynb`, `model_training.ipynb`)
2. **Clear outputs before committing** to keep the repository clean
3. **Use relative imports** to import your package: `from {{ cookiecutter.package_name }} import ...`
4. **Document your work** with markdown cells explaining the purpose and findings
5. **Keep notebooks focused** - one main topic or experiment per notebook
