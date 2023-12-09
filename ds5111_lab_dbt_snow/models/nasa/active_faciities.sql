
{{ config(materialized='table') }}

SELECT CENTER,STATUS
FROM nasa_facilities
WHERE status = 'Active'
-- DO NOT USE ; in these sql files
