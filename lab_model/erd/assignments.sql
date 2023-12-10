
{{ config(materialized='table') }}

SELECT *
FROM Assignments
-- DO NOT USE ; in these sql files
