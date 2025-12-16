SELECT
    C.CustomerID AS ID,
    C.FullName,
    COUNT(*) AS PaymentCount,
    SUM(P.Amount) AS TotalMoneySpent
FROM app.Payments AS P
JOIN app.Orders   AS O ON O.OrderID = P.OrderID
JOIN app.Customers AS C ON C.CustomerID = O.CustomerID
GROUP BY
    C.CustomerID,
    C.FullName;
