SELECT Locations.countriesAndTerritories AS country, SUM(Covid.cases) * 100.0 / Locations.popData2018 AS "% cases of population", 
       SUM(Covid.deaths) * 100.0 / Locations.popData2018 AS "% deaths of population"
FROM Locations
INNER JOIN Covid ON Covid.geoID = Locations.geoID
GROUP BY country
ORDER BY country;


