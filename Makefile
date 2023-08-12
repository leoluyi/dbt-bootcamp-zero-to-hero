@PHONY: dbt-run
dbt-run:
	@export $$(grep -v '^#' .env | xargs) && echo "(exported env)" \
		&& . ./venv/bin/activate \
		&& dbt run

@PHONY: dbt-compile
dbt-compile:
	@export $$(grep -v '^#' .env | xargs) && echo "(exported env)" \
		&& . ./venv/bin/activate \
		&& dbt compile

@PHONY: dbt-seed
dbt-seed:
	@export $$(grep -v '^#' .env | xargs) && echo "(exported env)" \
		&& . ./venv/bin/activate \
		&& dbt seed

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
