DBT_DIR := dbtlearn

dbt-debug:
	@export $$(grep -v '^#' .env | xargs) && echo "(exported env)"
	@cd $(DBT_DIR) && dbt debug
