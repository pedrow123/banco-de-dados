SELECT COUNT (*)
FROM (
        SELECT c_custkey
        FROM customer
        EXCEPT
        SELECT DISTINCT o_custkey
        FROM orders
        ORDER BY o_custkey
    );