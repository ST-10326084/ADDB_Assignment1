-- QUESTION 5

ALTER SESSION SET container=xepdb1;

SELECT *
FROM (
    SELECT 
        s.STAFF_ID,
        s.FIRST_NAME,
        s.SURNAME,
        COUNT(d.DELIVERY_ITEM) AS NUM_DELIVERIES_PROCESSED
    FROM 
        Staff s
    JOIN 
        Delivery_Items d ON s.STAFF_ID = d.STAFF_ID
    GROUP BY 
        s.STAFF_ID, s.FIRST_NAME, s.SURNAME
    ORDER BY 
        NUM_DELIVERIES_PROCESSED DESC
)
WHERE ROWNUM = 1;
