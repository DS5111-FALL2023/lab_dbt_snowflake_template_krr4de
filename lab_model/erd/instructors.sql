
{{ config(materialized='table') }}

SELECT *
FROM Instructors
-- DO NOT USE ; in these sql files
