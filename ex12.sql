
INSERT INTO DateRec SELECT DISTINCT(dateRep), day, month, year FROM dataset;
INSERT INTO Locations SELECT DISTINCT geoID, countriesAndTerritories, countryterritoryCode, continentExp, popData2018 FROM dataset;
INSERT INTO Covid SELECT DISTINCT dateRep, geoID, cases, deaths FROM dataset;

