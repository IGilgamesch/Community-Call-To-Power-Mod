CREATE TABLE IDRemapper ( id INTEGER PRIMARY KEY AUTOINCREMENT, Type TEXT );
INSERT INTO IDRemapper (Type) SELECT Type FROM Eras;
UPDATE Eras SET ID = ( SELECT IDRemapper.id-1 FROM IDRemapper WHERE Eras.Type = IDRemapper.Type);