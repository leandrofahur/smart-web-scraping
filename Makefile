.PHONY: help install test lint format coverage ci clean

# Default target
help:
	@echo "Available Commands:"
	@echo ""
	@echo "Development:"
	@echo "  install     Install all dependencies"
	@echo "  test        Run all tests"
	@echo "  lint        Run linting checks"
	@echo "  format      Format code with Black"
	@echo "  coverage    Run tests with coverage"
	@echo "  run         Run the scraper"
	@echo "  ci          Run complete CI pipeline"
	@echo ""
	@echo "Maintenance:"
	@echo "  clean       Clean generated files"
	@echo ""

# Install dependencies
install:
	@echo "Installing dependencies..."
	uv sync --extra dev

# Run all tests
test:
	@echo "Running tests..."
	. .venv/bin/activate && python -m pytest tests/ -v

# Run linting with fix
lint:
	@echo "Running linting with fix..."
	. .venv/bin/activate && ruff check . --fix

# Format code
format:
	@echo "Formatting the code..."
	. .venv/bin/activate && black .

# Run coverage
coverage:
	@echo "Running tests with coverage..."
	. .venv/bin/activate && python -m pytest tests/ --cov=scraper --cov=tests --cov-report=term-missing

# Run the scraper
run:
	@echo "Running the scraper..."
	. .venv/bin/activate && python -m scraper.core

# Run complete CI pipeline
ci: lint format test coverage
	@echo "CI pipeline completed successfully!"

# Clean generated files
clean:
	@echo "Cleaning generated files..."
	rm -rf .pytest_cache htmlcov .coverage coverage.xml .ruff_cache
	@echo "Cleanup completed!"
