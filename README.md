# Smart Web Scraping

<!-- [![codecov](https://codecov.io/gh/leandrofahur/ask-wise/branch/main/graph/badge.svg?token=YR9K32XX5X)](https://codecov.io/gh/leandrofahur/ask-wise?branch=main) -->
[![Python Version](https://img.shields.io/badge/python-3.12%2B-blue.svg)](https://www.python.org/downloads/)
[![Project Version](https://img.shields.io/badge/version-0.1.0-green.svg)](https://github.com/Nihongo-Dekita/kotoba-coach-speech-ai-model)

> Smart Web Scraping is a modular and extensible scraping engine designed to intelligently extract structured information from websites using a hybrid of traditional techniques and AI-powered extraction models. Built with a focus on stealth, reliability, and ease of extension.


## Project Purpose
The goal of this project is to build a scraping engine that goes beyond static rule-based logic. It integrates AI to adaptively interpret messy or semi-structured content, improving resilience against DOM changes and enabling richer extraction.

- Ideal for use cases like:
- Product or job listing aggregation
- AI-assisted competitive analysis
- Research and academic data collection
- Content enrichment pipelines


## What's Inside

- **Modular Python architecture** using pyproject.toml and uv
- **AI Integration** for smart content extraction using local or remote models
- **Stealth Techniques** to bypass bot protections (headers, delays, user-agents)
- **Task Automation** with Makefile (linting, testing, formatting)
- **Test Coverage** with pytest
- Ready for extension into pipelines or microservices

## Project Structure
```bash
smart-web-scraping/
├── .gitignore
├── Makefile
├── pyproject.toml
├── README.md
├── scraper/
│   ├── __init__.py
│   ├── core.py         # Core scraping logic (requests, parsing, retries)
│   ├── ai_agent.py     # AI for smart extraction or classification
│   ├── stealth.py      # Headers, user-agents, delays, proxies
│   └── utils.py
├── tests/
│   ├── __init__.py
│   ├── test_core.py
│   └── test_ai_agent.py
└── scripts/
    └── run_scraper.py  # CLI entrypoint to launch jobs
```


## Setup

### 1. Create environment using `uv`

```bash
$ uv python install 3.12.7
$ uv venv --python 3.12.7
$ uv sync
```

> If the uv command is not recognized, try restarting your terminal.


### 2. Install dependencies

```bash
$ uv pip install -r requirements.txt
```

or if you’re managing via `pyproject.toml`:

```bash
$ uv pip install .
```


## Workflow Automation (Makefile)
The project uses a `Makefile` for streamlined CLI commands:

```bash
$ make help          # Display all commands
$ make install       # Install all dependencies
$ make test          # Run all tests
$ make lint          # Run linting checks
$ make format        # Format code with Black
$ make coverage      # Run tests with coverage
$ make run           # Run the scraper
$ make ci            # Run complete CI pipelin
$ make clean         # Clean generated files

```


## Tech Stack
| Tool                  | Purpose                                             |
|-----------------------|-----------------------------------------------------|
| Python 3.12+          | Core language for backend scraping and AI logic     |
| uv + pyproject.toml   | Modern Python dependency and environment management |
| Requests / httpx      | HTTP requests layer                                 |
| BeautifulSoup / lxml  | HTML parsing                                        |
| LangChain / LLM APIs  | Intelligent data extraction and reasoning           |
| Ruff, Black           | Linting and formatting                              |
| Pytest                | Unit testing                                        |
| Makefile              | Workflow automation                                 |


## Team
| Avatar | Name | Role | GitHub |
|--------|------|------|--------|
| <img src="https://avatars.githubusercontent.com/u/46628080?u=7c2c2d90408b1a731118b5b3512d9da890cf2d45&v=4" width="40" /> | **Leandro Miranda Fahur Machado** | AI/ML Software Engineer - Fullstack | [@leandrofahur](https://github.com/leandrofahur) |