SELECT O.OrderID, O.OrderDate, O.Status, 
    CONCAT('R', (OI.Quantity * OI.UnitPrice)) AS Order_Gross_sale 
    FROM SqlMiniProject.app.Orders O LEFT JOIN SqlMiniProject.app.OrderItems OI 
        ON O.OrderID = OI.OrderID
