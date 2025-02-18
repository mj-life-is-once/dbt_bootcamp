{% test positive_value(model, column_name) %}
SELECT 
    *
FROM 
    {{ model}}
WHERE {{ column_name }} < 1
{% endtest %}

-- test is a special type of macro
-- name of the macros do not have to match with the file name