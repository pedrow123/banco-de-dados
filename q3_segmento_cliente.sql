SELECT DISTINCT c_mktsegment,
    COUNT (*)
FROM customer
GROUP BY c_mktsegment;