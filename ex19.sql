SELECT DateRec.dateRep, SUM(Covid.deaths) OVER (ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'cumulative UK deaths',
       SUM(Covid.cases) OVER (ORDER BY DateRec.year, DateRec.month, DateRec.day 
                              ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'cumulative UK cases'
FROM Covid 
INNER JOIN DateRec ON Covid.dateRep = DateRec.dateRep
WHERE geoID = "UK"
ORDER BY DateRec.year, DateRec.month, DateRec.day;