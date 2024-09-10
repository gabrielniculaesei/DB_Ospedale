--O1
DELIMITER //
CREATE PROCEDURE InserisciPaziente (
    IN CodiceFiscale CHAR(16), 
    IN Nome VARCHAR(100), 
    IN Cognome VARCHAR(100), 
    IN DataNascita DATE, 
    IN Sesso CHAR(1), 
    IN Indirizzo TEXT, 
    IN Telefono VARCHAR(15), 
    IN Email VARCHAR(100), 
    IN ContattoUrgente VARCHAR(100)
)
BEGIN
    INSERT INTO Paziente (CodiceFiscale, Nome, Cognome, DataNascita, Sesso, Indirizzo, Telefono, Email, ContattoUrgente)
    VALUES (CodiceFiscale, Nome, Cognome, DataNascita, Sesso, Indirizzo, Telefono, Email, ContattoUrgente);
END //
DELIMITER ;

--O2

DELIMITER //
CREATE PROCEDURE AssegnaTrattamento (
    IN ID_Trattamento CHAR(10),
    IN Descrizione TEXT,
    IN DataInizio DATE,
    IN DataFine DATE,
    IN Risultati TEXT,
    IN ID_Fascicolo CHAR(10)
)
BEGIN
    INSERT INTO Trattamento (ID_Trattamento, Descrizione, DataInizio, DataFine, Risultati, ID_Fascicolo)
    VALUES (ID_Trattamento, Descrizione, DataInizio, DataFine, Risultati, ID_Fascicolo);
END //
DELIMITER ;

--O3

DELIMITER //
CREATE PROCEDURE VisualizzaTrattamentiPaziente (
    IN CodiceFiscale CHAR(16)
)
BEGIN
    SELECT T.ID_Trattamento, T.Descrizione, T.DataInizio, T.DataFine, T.Risultati
    FROM Trattamento T
    JOIN Fascicolo F ON T.ID_Fascicolo = F.ID_Fascicolo
    WHERE F.CodiceFiscalePaziente = CodiceFiscale;
END //
DELIMITER ;


--O4

DELIMITER //
CREATE PROCEDURE ContaInterventiDottore (
    IN ID_Dottore CHAR(10),
    OUT NumeroInterventi INT
)
BEGIN
    SELECT COUNT(*) INTO NumeroInterventi
    FROM Intervento I
    JOIN Reparto R ON I.ID_Reparto = R.ID_Reparto
    WHERE R.CapoReparto = ID_Dottore;
END //
DELIMITER ;

--O5

DELIMITER //
CREATE PROCEDURE VisualizzaRepartoPaziente (
    IN CodiceFiscale CHAR(16)
)
BEGIN
    SELECT R.NomeReparto
    FROM Reparto R
    JOIN Intervento I ON R.ID_Reparto = I.ID_Reparto
    WHERE I.CodiceFiscalePaziente = CodiceFiscale;
END //
DELIMITER ;


--O6

DELIMITER //
CREATE PROCEDURE DottorePiuInfermieri (OUT ID_Dottore CHAR(10))
BEGIN
    SELECT I.ID_Dottore
    FROM Infermiere I
    GROUP BY I.ID_Dottore
    ORDER BY COUNT(*) DESC
    LIMIT 1
    INTO ID_Dottore;
END //
DELIMITER ;
