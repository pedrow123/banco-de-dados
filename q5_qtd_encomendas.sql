SELECT n_name,
    COUNT (o_orderkey) AS contador
FROM nation,
    orders,
    customer
WHERE o_custkey = c_custkey
    AND c_nationkey = n_nationkey
GROUP BY n_name
ORDER BY contador DESC;