--CHALANGE 1.1, check successful deleveries 

SELECT COUNT(*) AS SUCCESFUL_DELIVERIES FROM SqlMiniProject.app.Shipments S
    LEFT JOIN SqlMiniProject.app.Orders O
    ON S.OrderID = O.OrderID
    WHERE O.Status = 'Delivered' AND S.DeliveredDate IS NOT NULL


--CHALANGE 1.2, check fake deleveres
  
SELECT COUNT(*) AS FALSE_DELVIRIES FROM SqlMiniProject.app.Shipments S
    LEFT JOIN SqlMiniProject.app.Orders O
    ON S.OrderID = O.OrderID
    WHERE O.Status != 'Delivered' AND S.DeliveredDate IS NOT NULL; 
