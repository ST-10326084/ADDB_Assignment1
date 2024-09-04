-- QUESTION 4

ALTER SESSION SET container=xepdb1;

SELECT 
    d.FIRST_NAME || ' ' || d.SURNAME AS DRIVER_NAME,
    d.DRIVER_CODE AS Vin_CODE,
    v.VIN_NUMBER,
    v.MILEAGE
FROM 
    Driver d
JOIN 
    driver_deliveries dd ON d.DRIVER_ID = dd.DRIVER_ID
JOIN 
    Vehicle v ON dd.VIN_NUMBER = v.VIN_NUMBER
WHERE 
    v.MILEAGE < 80000;
