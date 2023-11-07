# DBT learn

Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test

### FAQ

- [Env var required but not provided - dbt CLI - Stack Overflow](https://stackoverflow.com/questions/71920945/env-var-required-but-not-provided-dbt-cli)
- [With Oracle, typically, nested WITH statements raise  ORA-32034: unsupported use of WITH clause](https://github.com/oracle/dbt-oracle/issues/68#issuecomment-1400788452)
  * see also [ORA-32034](http://www.dba-oracle.com/t_ora_32034_unsupported_use_with_clause.htm)
  * __Soluttion__: To make ephemeral materialization work, one option is to remove the `WITH` keyword in the model definition. Please refer an [example epehermal](https://github.com/oracle/dbt-oracle/blob/main/dbt_adbs_test_project/models/income_levels.sql) model which is also used in a second model both included in this repository

### Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
