"""
{{ cookiecutter.project_name }}

{{ cookiecutter.description }}
"""

__version__ = "{{ cookiecutter.version }}"
__author__ = "{{ cookiecutter.author_name }}"
__email__ = "{{ cookiecutter.author_email }}"


def main() -> None:
    """Main entry point for {{ cookiecutter.project_name }}."""
    print("Hello from {{ cookiecutter.project_name }}!")
    print(f"Version: {__version__}")


if __name__ == "__main__":
    main()
