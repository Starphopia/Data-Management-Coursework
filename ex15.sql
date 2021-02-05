SELECT Covid.dateRep AS date, cases AS "number of cases" FROM Covid
JOIN DateRec
ON DateRec.dateRep = Covid.dateRep 
WHERE Covid.geoID = "UK"
ORDER BY year, month, day;

