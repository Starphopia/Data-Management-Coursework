SELECT Locations.continentExp AS continent, Covid.dateRep, SUM(Covid.cases) AS "number of cases", SUM(Covid.deaths) AS "number of deaths"
FROM Locations
INNER JOIN Covid ON Covid.geoID = Locations.geoID
INNER JOIN DateRec ON DateRec.dateRep = Covid.dateRep
GROUP BY Locations.continentExp, DateRec.dateRep
ORDER BY Locations.continentExp, DateRec.year, DateRec.month, DateRec.year;


