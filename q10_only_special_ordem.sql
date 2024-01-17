SELECT COUNT (DISTINCT o_custke)
FROM (
        SELECT DISTINCT o_custkey
        FROM orders
        WHERE o_comment LIKE '%special request%'
        EXCEPT
        SELECT DISTINCT o_custkey
        FROM orders
        WHERE o_comment LIKE '%unusual package%'
    );