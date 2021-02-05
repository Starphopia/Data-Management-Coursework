SELECT Locations.countriesAndTerritories AS 'country name', SUM(Covid.deaths) * 100.0 / SUM(Covid.cases) AS "% deaths of country cases"
FROM Locations 
JOIN Covid ON Locations.geoID = Covid.geoID
GROUP BY Locations.countriesAndTerritories
ORDER BY "% deaths of country cases" DESC
LIMIT 10;