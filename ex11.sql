

CREATE TABLE Locations (
geoID TEXT UNIQUE NOT NULL PRIMARY KEY,
countriesAndTerritories TEXT UNIQUE,
countryterritoryCode TEXT,
continentExp TEXT,
popData2018 INTEGER
);

CREATE TABLE DateRec (
dateRep STRING UNIQUE NOT NULL PRIMARY KEY,
day INTEGER,
month INTEGER,
year INTEGER
);


CREATE TABLE Covid (
dateRep STRING NOT NULL,
geoID TEXT NOT NULL, 
cases INTEGER,
deaths INTEGER,
CONSTRAINT pk_covid PRIMARY KEY (dateRep, geoID),
CONSTRAINT fk_daterec FOREIGN KEY (dateRep) REFERENCES DateRec(dateRep),
CONSTRAINT fk_locations FOREIGN KEY (geoID) REFERENCES Locations(geoID)
);
CREATE INDEX dateRepIndex ON Covid(dateRep);
CREATE INDEX geoIDIndex ON Covid(geoID);


