
{{ config(materialized='table') }}

SELECT *
FROM Courses
-- DO NOT USE ; in these sql files
