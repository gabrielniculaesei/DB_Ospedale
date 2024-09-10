
-- Progetto Marian Gabriel Niculaesei 1000044505 Database
--
-- Database: `Ospedale`
--

-- --------------------------------------------------------

--
-- Table structure for table `Dottore`
--

CREATE TABLE `Dottore` (
  `ID_Dottore` char(10) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL
  `Cognome` varchar(100) DEFAULT NULL,
  `Specializzazione` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
);

--
-- Dumping data for table `Dottore`
--

INSERT INTO `Dottore` (`ID_Dottore`, `Nome`, `Cognome`, `Specializzazione`, `Telefono`, `Email`) VALUES
('DCT0001', 'Giovanni', 'Bianchi', 'Cardiologia', '3216549870', 'giovanni.bianchi@example.com'),
('DCT0002', 'Elena', 'Rossi', 'Ortopedia', '3226549871', 'elena.rossi@example.com'),
('DCT0003', 'Alberto', 'Verdi', 'Neurologia', '3236549872', 'alberto.verdi@example.com'),
('DCT0004', 'Francesca', 'Gialli', 'Ginecologia', '3246549873', 'francesca.gialli@example.com'),
('DCT0005', 'Marco', 'Neri', 'Chirurgia', '3256549874', 'marco.neri@example.com'),
('DCT0006', 'Anna', 'Savi', 'Pediatria', '3266549875', 'anna.savi@example.com'),
('DCT0007', 'Luca', 'Mariani', 'Oculistica', '3276549876', 'luca.mariani@example.com'),
('DCT0008', 'Maria', 'Giorgi', 'Urologia', '3286549877', 'maria.giorgi@example.com'),
('DCT0009', 'Paolo', 'Ferrari', 'Endocrinologia', '3296549878', 'paolo.ferrari@example.com'),
('DCT0010', 'Giulia', 'Russo', 'Anestesiologia', '3306549879', 'giulia.russo@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `Fascicolo`
--

CREATE TABLE `Fascicolo` (
  `ID_Fascicolo` char(10) NOT NULL,
  `DataCreazione` date DEFAULT NULL,
  `UltimoAggiornamento` date DEFAULT NULL,
  `NoteMediche` text DEFAULT NULL,
  `CodiceFiscalePaziente` char(16) DEFAULT NULL,
  `ID_Dottore` char(10) DEFAULT NULL
);

--
-- Dumping data for table `Fascicolo`
--

INSERT INTO `Fascicolo` (`ID_Fascicolo`, `DataCreazione`, `UltimoAggiornamento`, `NoteMediche`, `CodiceFiscalePaziente`, `ID_Dottore`) VALUES
('FSC0001', '2024-01-15', '2024-03-01', 'Controlli periodici cardiaci.', 'RSSMRO80M15F205Z', 'DCT0001'),
('FSC0002', '2024-02-10', '2024-03-05', 'Visita ortopedica iniziale.', 'BNCNNA75M62H703X', 'DCT0002'),
('FSC0003', '2024-03-12', '2024-03-15', 'Esami neurologici richiesti.', 'VRDPSP90T30F839Y', 'DCT0003'),
('FSC0004', '2024-04-05', '2024-04-10', 'Consulto ginecologico di routine.', 'GLLFNC85C54L219G', 'DCT0004'),
('FSC0005', '2024-05-20', '2024-05-25', 'Interventi chirurgici programmati.', 'NRLSSN00L25G612Z', 'DCT0005'),
('FSC0006', '2024-06-10', '2024-06-15', 'Visita pediatrica annuale.', 'RSSCSD92M50A662Z', 'DCT0006'),
('FSC0007', '2024-07-01', '2024-07-05', 'Esame oculistico di controllo.', 'MRNLUC87D05B123G', 'DCT0007'),
('FSC0008', '2024-08-15', '2024-08-20', 'Esame urologico per follow-up.', 'FRRELN95N60E086Y', 'DCT0008'),
('FSC0009', '2024-09-10', '2024-09-15', 'Controllo endocrinologico programmato.', 'MRCGPP84P60G273W', 'DCT0009'),
('FSC0010', '2024-10-01', '2024-10-05', 'Visita anestesiologica preliminare.', 'GLRLNS76T55H312Z', 'DCT0010');

-- --------------------------------------------------------

--
-- Table structure for table `Infermiere`
--

CREATE TABLE `Infermiere` (
  `ID_Infermiere` char(10) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Cognome` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ID_Dottore` char(10) DEFAULT NULL
);

--
-- Dumping data for table `Infermiere`
--

INSERT INTO `Infermiere` (`ID_Infermiere`, `Nome`, `Cognome`, `Telefono`, `Email`, `ID_Dottore`) VALUES
('INF0001', 'Anna', 'Rossi', '3211112233', 'anna.rossi@example.com', 'DCT0001'),
('INF0002', 'Luca', 'Verdi', '3211112234', 'luca.verdi@example.com', 'DCT0002'),
('INF0003', 'Maria', 'Bianchi', '3211112235', 'maria.bianchi@example.com', 'DCT0003'),
('INF0004', 'Francesco', 'Gallo', '3211112236', 'francesco.gallo@example.com', 'DCT0004'),
('INF0005', 'Sara', 'Marini', '3211112237', 'sara.marini@example.com', 'DCT0005'),
('INF0006', 'Giovanni', 'Neri', '3211112238', 'giovanni.neri@example.com', 'DCT0006'),
('INF0007', 'Elena', 'Rinaldi', '3211112239', 'elena.rinaldi@example.com', 'DCT0007'),
('INF0008', 'Paolo', 'Mazzi', '3211112240', 'paolo.mazzi@example.com', 'DCT0008'),
('INF0009', 'Martina', 'Fontana', '3211112241', 'martina.fontana@example.com', 'DCT0009'),
('INF0010', 'Alessandro', 'Rossi', '3211112242', 'alessandro.rossi@example.com', 'DCT0010');

-- --------------------------------------------------------

--
-- Table structure for table `Intervento`
--

CREATE TABLE `Intervento` (
  `ID_Intervento` char(10) NOT NULL,
  `TipoIntervento` varchar(100) DEFAULT NULL,
  `DataIntervento` date DEFAULT NULL,
  `Durata` time DEFAULT NULL,
  `Risultato` text DEFAULT NULL,
  `CodiceFiscalePaziente` char(16) DEFAULT NULL,
  `ID_Reparto` char(10) DEFAULT NULL,
  `ID_SalaOperazione` char(10) DEFAULT NULL
);

--
-- Dumping data for table `Intervento`
--

INSERT INTO `Intervento` (`ID_Intervento`, `TipoIntervento`, `DataIntervento`, `Durata`, `Risultato`, `CodiceFiscalePaziente`, `ID_Reparto`, `ID_SalaOperazione`) VALUES
('INT0001', 'Angioplastica', '2024-01-25', '02:00:00', 'Completata con successo', 'RSSMRO80M15F205Z', 'REP0001', 'SOP0001'),
('INT0002', 'Riparazione frattura', '2024-02-20', '01:30:00', 'Guarigione in corso', 'BNCNNA75M62H703X', 'REP0002', 'SOP0002'),
('INT0003', 'Rimozione tumore', '2024-03-15', '03:00:00', 'Intervento riuscito', 'VRDPSP90T30F839Y', 'REP0003', 'SOP0003'),
('INT0004', 'Cesareo', '2024-04-10', '01:45:00', 'Nascita avvenuta', 'GLLFNC85C54L219G', 'REP0004', 'SOP0004'),
('INT0005', 'Chirurgia addominale', '2024-05-30', '02:30:00', 'Intervento ben riuscito', 'NRLSSN00L25G612Z', 'REP0005', 'SOP0005'),
('INT0006', 'Vaccinazione', '2024-06-25', '00:30:00', 'Completata con successo', 'RSSCSD92M50A662Z', 'REP0006', 'SOP0006'),
('INT0007', 'Esame oculistico', '2024-07-10', '01:00:00', 'Esame completato', 'MRNLUC87D05B123G', 'REP0007', 'SOP0007'),
('INT0008', 'Rimozione calcoli renali', '2024-08-05', '02:00:00', 'Procedura riuscita', 'FRRELN95N60E086Y', 'REP0008', 'SOP0008'),
('INT0009', 'Controllo tiroideo', '2024-09-15', '01:00:00', 'Controllo effettuato', 'MRCGPP84P60G273W', 'REP0009', 'SOP0009'),
('INT0010', 'Anestesia pre-operatoria', '2024-10-10', '00:45:00', 'Preparazione completata', 'GLRLNS76T55H312Z', 'REP0010', 'SOP0010');

-- --------------------------------------------------------

--
-- Table structure for table `Medicine`
--

CREATE TABLE `Medicine` (
  `ID_Medicine` char(10) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Dosaggio` varchar(100) DEFAULT NULL,
  `Frequenza` varchar(100) DEFAULT NULL,
  `DataInizio` date DEFAULT NULL,
  `DataFine` date DEFAULT NULL,
  `EffettiAdversi` text DEFAULT NULL,
  `ID_Trattamento` char(10) DEFAULT NULL
);

--
-- Dumping data for table `Medicine`
--

INSERT INTO `Medicine` (`ID_Medicine`, `Nome`, `Dosaggio`, `Frequenza`, `DataInizio`, `DataFine`, `EffettiAdversi`, `ID_Trattamento`) VALUES
('MED0001', 'Atenololo', '50mg', 'Giornaliera', '2024-01-20', '2024-02-20', 'Vertigini', 'TRT0001'),
('MED0002', 'Ibuprofene', '400mg', 'Ogni 8 ore', '2024-02-15', '2024-03-15', 'Mal di stomaco', 'TRT0002'),
('MED0003', 'Carbamazepina', '200mg', 'Due volte al giorno', '2024-03-20', '2024-04-20', 'Sonno disturbato', 'TRT0003'),
('MED0004', 'Contraccettivo orale', '1 compressa', 'Giornaliera', '2024-04-10', '2024-05-10', 'Nausea', 'TRT0004'),
('MED0005', 'Antibiotico', '500mg', 'Due volte al giorno', '2024-05-25', '2024-06-25', 'Reazioni allergiche', 'TRT0005'),
('MED0006', 'Paracetamolo', '1g', 'Ogni 6 ore', '2024-06-15', '2024-07-15', 'Eruzioni cutanee', 'TRT0006'),
('MED0007', 'Lattulosio', '15ml', 'Giornaliera', '2024-07-10', '2024-08-10', 'Crampi addominali', 'TRT0007'),
('MED0008', 'Ciprofloxacina', '250mg', 'Ogni 12 ore', '2024-08-20', '2024-09-20', 'Vertigini', 'TRT0008'),
('MED0009', 'Levotiroxina', '100mcg', 'Giornaliera', '2024-09-15', '2024-10-15', 'Perdita di peso', 'TRT0009'),
('MED0010', 'Midazolam', '2mg', 'Pre-operatorio', '2024-10-05', '2024-10-15', 'Sedazione e confusione', 'TRT0010');

-- --------------------------------------------------------

--
-- Table structure for table `Paziente`
--

CREATE TABLE `Paziente` (
  `CodiceFiscale` char(16) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Cognome` varchar(100) DEFAULT NULL,
  `DataNascita` date DEFAULT NULL,
  `Sesso` char(1) DEFAULT NULL,
  `Indirizzo` text DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ContattoUrgente` varchar(100) DEFAULT NULL
);

--
--

INSERT INTO `Paziente` (`CodiceFiscale`, `Nome`, `Cognome`, `DataNascita`, `Sesso`, `Indirizzo`, `Telefono`, `Email`, `ContattoUrgente`) VALUES
('BNCNNA75M62H703X', 'Giovanni', 'Bianchi', '1975-06-22', 'M', 'Via Verdi 5, Torino', '3212345678', 'giovanni.bianchi@example.com', 'Laura Bianchi'),
('FRRELN95N60E086Y', 'Elena', 'Ferrari', '1995-02-06', 'F', 'Via Veneto 30, Palermo', '3278901234', 'elena.ferrari@example.com', 'Francesco Ferrari'),
('GLLFNC85C54L219G', 'Francesco', 'Galli', '1985-05-17', 'M', 'Corso Italia 25, Napoli', '3234567890', 'francesco.galli@example.com', 'Anna Galli'),
('GLRLNS76T55H312Z', 'Elisa', 'Rinaldi', '1976-12-12', 'F', 'Via Magenta 50, Torino', '3290123456', 'elisa.rinaldi@example.com', 'Luca Rinaldi'),
('MRCGPP84P60G273W', 'Paolo', 'Galli', '1984-04-23', 'M', 'Piazza Garibaldi 18, Milano', '3289012345', 'paolo.galli@example.com', 'Simona Galli'),
('MRNLUC87D05B123G', 'Lucia', 'Marinelli', '1987-11-05', 'F', 'Via Dante 14, Verona', '3267890123', 'lucia.marinelli@example.com', 'Giovanni Marinelli'),
('NRLSSN00L25G612Z', 'Alessandra', 'Neri', '2000-01-30', 'F', 'Via Monti 8, Bologna', '3245678901', 'alessandra.neri@example.com', 'Roberto Neri'),
('RSSCSD92M50A662Z', 'Antonio', 'Russo', '1992-07-22', 'M', 'Piazza Duomo 12, Genova', '3256789012', 'antonio.russo@example.com', 'Maria Russo'),
('RSSMRO80M15F205Z', 'Rosa', 'Rossi', '1980-03-15', 'F', 'Via Roma 10, Milano', '3201234567', 'rosa.rossi@example.com', 'Mario Rossi'),
('VRDPSP90T30F839Y', 'Paola', 'Verdi', '1990-10-03', 'F', 'Via Libertà 20, Firenze', '3223456789', 'paola.verdi@example.com', 'Antonio Verdi');

-- --------------------------------------------------------

--
-- Table structure for table `Reparto`
--

CREATE TABLE `Reparto` (
  `ID_Reparto` char(10) NOT NULL,
  `NomeReparto` varchar(100) DEFAULT NULL,
  `Luogo` varchar(100) DEFAULT NULL,
  `CapacitàPazienti` int(11) DEFAULT NULL,
  `CapoReparto` char(10) DEFAULT NULL
);

--
-- Dumping data for table `Reparto`
--

INSERT INTO `Reparto` (`ID_Reparto`, `NomeReparto`, `Luogo`, `CapacitàPazienti`, `CapoReparto`) VALUES
('REP0001', 'Cardiologia', NULL, NULL, 'DCT0001'),
('REP0002', 'Ortopedia', NULL, NULL, 'DCT0002'),
('REP0003', 'Neurologia', NULL, NULL, 'DCT0003'),
('REP0004', 'Ginecologia', NULL, NULL, 'DCT0004'),
('REP0005', 'Chirurgia', NULL, NULL, 'DCT0005'),
('REP0006', 'Pediatria', NULL, NULL, 'DCT0006'),
('REP0007', 'Oculistica', NULL, NULL, 'DCT0007'),
('REP0008', 'Urologia', NULL, NULL, 'DCT0008'),
('REP0009', 'Endocrinologia', NULL, NULL, 'DCT0009'),
('REP0010', 'Anestesiologia', NULL, NULL, 'DCT0010');

-- --------------------------------------------------------

--
-- Table structure for table `SalaOperazione`
--

CREATE TABLE `SalaOperazione` (
  `ID_SalaOperazione` char(10) NOT NULL,
  `NomeSala` varchar(100) DEFAULT NULL,
  `AttrezzatureDisponibili` text DEFAULT NULL,
  `Capacità` int(11) DEFAULT NULL,
  `Disponibilità` tinyint(1) DEFAULT NULL
);

--
-- Dumping data for table `SalaOperazione`
--

INSERT INTO `SalaOperazione` (`ID_SalaOperazione`, `NomeSala`, `AttrezzatureDisponibili`, `Capacità`, `Disponibilità`) VALUES
('SOP0001', 'Sala 1A', 'Angiografo, Monitor ECG', 5, 1),
('SOP0002', 'Sala 1B', 'Macchina per raggi X, Lettino operatorio', 4, 1),
('SOP0003', 'Sala 2A', 'Tavolo operatorio, Strumenti chirurgici', 3, 0),
('SOP0004', 'Sala 2B', 'Monitor, Apparecchio anestesiologico', 5, 1),
('SOP0005', 'Sala 3A', 'Sistema di imaging, Strumenti laparoscopici', 4, 1),
('SOP0006', 'Sala 3B', 'Macchina per ECG, Monitor', 6, 1),
('SOP0007', 'Sala 4A', 'Monitor, Lampade chirurgiche', 5, 1),
('SOP0008', 'Sala 4B', 'Strumenti per endoscopia, Apparecchiature di supporto', 3, 0),
('SOP0009', 'Sala 5A', 'Tavolo operatorio, Macchina per anestesia', 5, 1),
('SOP0010', 'Sala 5B', 'Monitor ECG, Strumenti chirurgici', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Trattamento`
--

CREATE TABLE `Trattamento` (
  `ID_Trattamento` char(10) NOT NULL,
  `Descrizione` text DEFAULT NULL,
  `DataInizio` date DEFAULT NULL,
  `DataFine` date DEFAULT NULL,
  `Risultati` text DEFAULT NULL,
  `ID_Fascicolo` char(10) DEFAULT NULL
);

--
-- Dumping data for table `Trattamento`
--

INSERT INTO `Trattamento` (`ID_Trattamento`, `Descrizione`, `DataInizio`, `DataFine`, `Risultati`, `ID_Fascicolo`) VALUES
('TRT0001', 'Trattamento per ipertensione', '2024-01-20', '2024-02-20', 'Miglioramento significativo.', 'FSC0001'),
('TRT0002', 'Fisioterapia per frattura', '2024-02-15', '2024-03-15', 'Guarigione in corso.', 'FSC0002'),
('TRT0003', 'Rieducazione neurologica', '2024-03-20', '2024-04-20', 'Risultati parziali.', 'FSC0003'),
('TRT0004', 'Controllo ginecologico annuale', '2024-04-10', '2024-05-10', 'Nessuna anomalia trovata.', 'FSC0004'),
('TRT0005', 'Trattamento chirurgico programmato', '2024-05-25', '2024-06-25', 'Intervento riuscito.', 'FSC0005'),
('TRT0006', 'Controllo pediatrico e vaccini', '2024-06-15', '2024-07-15', 'Vaccinazioni completate.', 'FSC0006'),
('TRT0007', 'Esame oculistico con correzione', '2024-07-10', '2024-08-10', 'Miglioramento visivo.', 'FSC0007'),
('TRT0008', 'Trattamento per infezione urinaria', '2024-08-20', '2024-09-20', 'Infezione trattata.', 'FSC0008'),
('TRT0009', 'Controllo tiroideo', '2024-09-15', '2024-10-15', 'Ormoni sotto controllo.', 'FSC0009'),
('TRT0010', 'Visita anestesiologica preoperatoria', '2024-10-05', '2024-10-15', 'Pronta per l’intervento.', 'FSC0010');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Dottore`
--
ALTER TABLE `Dottore`
  ADD PRIMARY KEY (`ID_Dottore`);

--
-- Indexes for table `Fascicolo`
--
ALTER TABLE `Fascicolo`
  ADD PRIMARY KEY (`ID_Fascicolo`),
  ADD KEY `CodiceFiscalePaziente` (`CodiceFiscalePaziente`),
  ADD KEY `ID_Dottore` (`ID_Dottore`);

--
-- Indexes for table `Infermiere`
--
ALTER TABLE `Infermiere`
  ADD PRIMARY KEY (`ID_Infermiere`),
  ADD KEY `ID_Dottore` (`ID_Dottore`);

--
-- Indexes for table `Intervento`
--
ALTER TABLE `Intervento`
  ADD PRIMARY KEY (`ID_Intervento`),
  ADD KEY `CodiceFiscalePaziente` (`CodiceFiscalePaziente`),
  ADD KEY `ID_Reparto` (`ID_Reparto`),
  ADD KEY `ID_SalaOperazione` (`ID_SalaOperazione`);

--
-- Indexes for table `Medicine`
--
ALTER TABLE `Medicine`
  ADD PRIMARY KEY (`ID_Medicine`),
  ADD KEY `ID_Trattamento` (`ID_Trattamento`);

--
-- Indexes for table `Paziente`
--
ALTER TABLE `Paziente`
  ADD PRIMARY KEY (`CodiceFiscale`);

--
-- Indexes for table `Reparto`
--
ALTER TABLE `Reparto`
  ADD PRIMARY KEY (`ID_Reparto`),
  ADD KEY `CapoReparto` (`CapoReparto`);

--
-- Indexes for table `SalaOperazione`
--
ALTER TABLE `SalaOperazione`
  ADD PRIMARY KEY (`ID_SalaOperazione`);

--
-- Indexes for table `Trattamento`
--
ALTER TABLE `Trattamento`
  ADD PRIMARY KEY (`ID_Trattamento`),
  ADD KEY `ID_Fascicolo` (`ID_Fascicolo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Fascicolo`
--
ALTER TABLE `Fascicolo`
  ADD CONSTRAINT `fascicolo_ibfk_1` FOREIGN KEY (`CodiceFiscalePaziente`) REFERENCES `Paziente` (`CodiceFiscale`),
  ADD CONSTRAINT `fascicolo_ibfk_2` FOREIGN KEY (`ID_Dottore`) REFERENCES `Dottore` (`ID_Dottore`);

--
-- Constraints for table `Infermiere`
--
ALTER TABLE `Infermiere`
  ADD CONSTRAINT `infermiere_ibfk_1` FOREIGN KEY (`ID_Dottore`) REFERENCES `Dottore` (`ID_Dottore`);

--
-- Constraints for table `Intervento`
--
ALTER TABLE `Intervento`
  ADD CONSTRAINT `intervento_ibfk_1` FOREIGN KEY (`CodiceFiscalePaziente`) REFERENCES `Paziente` (`CodiceFiscale`),
  ADD CONSTRAINT `intervento_ibfk_2` FOREIGN KEY (`ID_Reparto`) REFERENCES `Reparto` (`ID_Reparto`),
  ADD CONSTRAINT `intervento_ibfk_3` FOREIGN KEY (`ID_SalaOperazione`) REFERENCES `SalaOperazione` (`ID_SalaOperazione`);

--
-- Constraints for table `Medicine`
--
ALTER TABLE `Medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`ID_Trattamento`) REFERENCES `Trattamento` (`ID_Trattamento`);

--
-- Constraints for table `Reparto`
--
ALTER TABLE `Reparto`
  ADD CONSTRAINT `reparto_ibfk_1` FOREIGN KEY (`CapoReparto`) REFERENCES `Dottore` (`ID_Dottore`);

--
-- Constraints for table `Trattamento`
--
ALTER TABLE `Trattamento`
  ADD CONSTRAINT `trattamento_ibfk_1` FOREIGN KEY (`ID_Fascicolo`) REFERENCES `Fascicolo` (`ID_Fascicolo`);
COMMIT;

-- Trigger

--Controllo la validità della specializzazione del dottore
DELIMITER //
CREATE PROCEDURE check_specializzazione (IN specializzazione VARCHAR(100))
BEGIN
    IF specializzazione NOT IN ('Cardiologia', 'Ortopedia', 'Neurologia', 'Ginecologia', 'Chirurgia', 'Pediatria', 'Oculistica', 'Urologia', 'Endocrinologia', 'Anestesiologia') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Specializzazione non valida. Deve essere una delle specializzazioni riconosciute.';
    END IF;
END //

CREATE TRIGGER controllo_specializzazione_dottore_ins
BEFORE INSERT ON Dottore
FOR EACH ROW
BEGIN
    CALL check_specializzazione(NEW.Specializzazione);
END;
//
DELIMITER;

--Controllo che l'infermiere sia già stato assegnato a un dottore
DELIMITER //
CREATE TRIGGER controllo_infermiere_dottore_ins
BEFORE INSERT ON Infermiere
FOR EACH ROW
BEGIN
    DECLARE dottore_esiste INT;

    SELECT COUNT(*) INTO dottore_esiste
    FROM Dottore
    WHERE ID_Dottore = NEW.ID_Dottore;

    IF dottore_esiste = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ID Dottore non valido. L''infermiere deve essere assegnato a un dottore esistente.';
    END IF;
END;

//

DELIMITER;

--Controllo che nella sala non vi sia un overbooking 
DELIMITER //
CREATE TRIGGER controllo_disponibilita_sala_ins
BEFORE INSERT ON Intervento
FOR EACH ROW
BEGIN
    DECLARE disponibilita INT;

    SELECT Disponibilità INTO disponibilita
    FROM SalaOperazione
    WHERE ID_SalaOperazione = NEW.ID_SalaOperazione;

    IF disponibilita = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La sala operazione selezionata non è disponibile.';
    END IF;
END;
//

DELIMITER;

--Controllo validità codice fiscale
DELIMITER //

CREATE TRIGGER controllo_fascicolo_paziente_ins
BEFORE INSERT ON Fascicolo
FOR EACH ROW
BEGIN
    DECLARE paziente_esiste INT;

    SELECT COUNT(*) INTO paziente_esiste
    FROM Paziente
    WHERE CodiceFiscale = NEW.CodiceFiscalePaziente;

    IF paziente_esiste = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Codice fiscale del paziente non valido.';
    END IF;
END;
//

DELIMITER ;





