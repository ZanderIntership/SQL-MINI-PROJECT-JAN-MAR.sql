SELECT SUM(P.Amount), p.Method FROM SqlMiniProject.app.Payments P
    GROUP BY p.Method;

SELECT SUM(P.Amount), p.Method FROM SqlMiniProject.app.Payments P
     GROUP BY p.Method
     HAVING SUM(P.Amount) > 10000000;
