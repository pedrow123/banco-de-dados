SELECT COUNT (*)
FROM (
        SELECT o_custkey
        FROM orders
        EXCEPT
        SELECT o_custkey
        FROM orders
        WHERE o_comment LIKE '%special request%'
    );