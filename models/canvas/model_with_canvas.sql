WITH stg_jaffle_shop__customers AS (
  /* Staged customer data from our jaffle shop app. */
  SELECT
    *
  FROM {{ ref('my_new_project', 'stg_jaffle_shop__customers') }}
), stg_jaffle_shop__orders AS (
  /* Staged order data from our jaffle shop app. */
  SELECT
    *
  FROM {{ ref('my_new_project', 'stg_jaffle_shop__orders') }}
), join_1 AS (
  SELECT
    *
  FROM stg_jaffle_shop__orders
  JOIN stg_jaffle_shop__customers
    USING (CUSTOMER_ID)
), model_with_canvas_sql AS (
  SELECT
    *
  FROM join_1
)
SELECT
  *
FROM model_with_canvas_sql