@PHONY: dbt-run
dbt-run:
	@export $$(grep -v '^#' .env | xargs) && echo "(exported env)" \
		&& . ./venv/bin/activate \
		&& dbt run

@PHONY: dbt-test
dbt-test:
	@export $$(grep -v '^#' .env | xargs) && echo "(exported env)" \
		&& . ./venv/bin/activate \
		&& dbt test

@PHONY: dbt-debug
dbt-debug:
	@export $$(grep -v '^#' .env | xargs) && echo "(exported env)" \
		&& . ./venv/bin/activate \
		&& dbt debug
