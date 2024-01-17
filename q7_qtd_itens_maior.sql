SELECT n_name,
    SUM (l_quantity) AS soma
FROM nation,
    orders,
    customer,
    lineitem
WHERE o_custkey = c_custkey
    AND c_nationkey = n_nationkey
    AND o_orderkey = l_orderkey
GROUP BY n_name
HAVING soma > 62000
ORDER BY soma DESC;