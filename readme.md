# "dbt for beginners" course

This is a complimentary repository for an online course "dbt for beginners".

The course can be [found here](https://dataschool.alterclass.school/courses/dbt-for-beginners-352402536678818389)

# How to install and use this repository

1. Clone this repository
    ```
    git clone git@github.com:oleg-agapov/dbt-for-beginners.git
    ```
1. Adjust `/dbt_demo/profiles.yml` so that it points out to a correct location of `data.duckdb` file:
    ```
    path: '/Users/john/dbt-for-beginners/data.duckdb'
    ```
1. Test that everything works with:
    ```
    dbt debug
    ```
    > You need to run `dbt` commands from `/dbt_demo` folder!!
1. Run all models with:
    ```
    dbt run
    ```
1. Generate documentation:
    ```
    dbt docs generate
    dbt docs serve
    ```
