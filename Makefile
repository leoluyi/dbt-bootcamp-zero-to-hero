create-venv:
	@echo "Creating virtual environment..."
	@python -m venv venv && echo "Virtual environment created."

sync-venv:./venv/bin/activate
	@echo "Syncing virtual environment..."
	@. ./venv/bin/activate && pipenv sync --dev
