CREATE OR REPLACE PROCEDURE drop_table_if_exists (table_name VARCHAR2) IS
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE ' || table_name || ' CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    drop_table_if_exists('Participer');
    drop_table_if_exists('Sponsoriser');
    drop_table_if_exists('InterviewI');
    drop_table_if_exists('InterviewC');
    drop_table_if_exists('InterviewM');
    drop_table_if_exists('AssisterJ');
    drop_table_if_exists('AssisterC');
    drop_table_if_exists('AssisterI');
    drop_table_if_exists('Tenue');
    drop_table_if_exists('Collection');
    drop_table_if_exists('Defile');
    drop_table_if_exists('Createur');
    drop_table_if_exists('Mannequin');
    drop_table_if_exists('Sponsor');
    drop_table_if_exists('Invite');
    drop_table_if_exists('Journaliste');
    drop_table_if_exists('MaisonMode');
END;
/


CREATE TABLE MaisonMode (
    nomMaisonMode VARCHAR(50) PRIMARY KEY,
    nomFondateur VARCHAR(50),
    dateFondation DATE,
    localisation VARCHAR(100),
    logo VARCHAR(100),
    siteWEB VARCHAR(100)
);

CREATE TABLE Createur (
    nCreateur INT PRIMARY KEY,
    prenom VARCHAR(50),
    nom VARCHAR(50),
    dateNaissance DATE,
    nationalite VARCHAR(50),
    anneeExperienceCreateur INT,
    nomMaisonMode VARCHAR(50) NOT NULL,
    FOREIGN KEY (nomMaisonMode) REFERENCES MaisonMode(nomMaisonMode) ON DELETE CASCADE,
    CONSTRAINT ch_c CHECK (dateNaissance <= TO_DATE('2006-10-30', 'YYYY-MM-DD'))
);


CREATE TABLE Mannequin (
    nMannequin INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INT CHECK (age >= 16),
    taille NUMBER(5, 2) CHECK (taille >= 170),
    poids NUMBER(5, 2),
    nationalite VARCHAR(50),
    genre VARCHAR(10),
    morphologie VARCHAR(50)
);

CREATE TABLE Invite (
    nInvite INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    dateNaissance DATE,
    nationaliteInvite VARCHAR(50),
    profession VARCHAR(50)
);

CREATE TABLE Journaliste (
    nJournaliste INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    media VARCHAR(100),
    specialite VARCHAR(50),
    telephone VARCHAR(20),
    mail VARCHAR(100)
);

CREATE TABLE Sponsor (
    nSponsor INT PRIMARY KEY,
    nomSponsor VARCHAR(100),
    typeSponsor VARCHAR(50),
    email VARCHAR(100),
    telephone VARCHAR(20)
);


CREATE TABLE Defile (
    nDefile INT PRIMARY KEY,
    lieu VARCHAR(100),
    heureDebut TIMESTAMP,
    heureFin TIMESTAMP,
    dateDefile DATE, 
    theme VARCHAR(50),
    descriptionDefile VARCHAR(255),
    nbrPlaceMax INT,
    nomMaisonMode VARCHAR(50) NOT NULL, 
    FOREIGN KEY (nomMaisonMode) REFERENCES MaisonMode(nomMaisonMode) ON DELETE CASCADE,
    CONSTRAINT ch_d CHECK (EXTRACT(HOUR FROM heureDebut) >= 14)
);

CREATE TABLE Collection (
    nCollection INT PRIMARY KEY,
    nomCollection VARCHAR(100) NOT NULL,
    themeCollection VARCHAR(50) NOT NULL,
    saison VARCHAR(20) NOT NULL,
    nbrTenues INT DEFAULT 0,
    nCreateur INT NOT NULL,  
    nomMaisonMode VARCHAR(50) NOT NULL, 
    FOREIGN KEY (nCreateur) REFERENCES Createur(nCreateur) ON DELETE SET NULL,
    FOREIGN KEY (nomMaisonMode) REFERENCES MaisonMode(nomMaisonMode) ON DELETE CASCADE
);

CREATE TABLE Tenue (
    nTenue INT PRIMARY KEY,
    taille NUMBER(5, 2),
    prix NUMBER(10, 2),
    nomTenue VARCHAR(100),
    description VARCHAR(255),
    categorieTenue VARCHAR(50),
    nCollection INT NOT NULL, 
    nCreateur INT NOT NULL,  
    FOREIGN KEY (nCollection) REFERENCES Collection(nCollection) ON DELETE SET NULL,
    FOREIGN KEY (nCreateur) REFERENCES Createur(nCreateur) ON DELETE SET NULL
);

CREATE TABLE AssisterI (
    heureDepart TIMESTAMP,
    heureArrivee TIMESTAMP,
    nDefile INT, 
    nInvite INT,
    FOREIGN KEY (nDefile) REFERENCES Defile(nDefile) ON DELETE CASCADE,
    FOREIGN KEY (nInvite) REFERENCES Invite(nInvite) ON DELETE SET NULL
);

CREATE TABLE AssisterJ (
    heureDepart TIMESTAMP,
    heureArrivee TIMESTAMP,
    nDefile INT, 
    nJournaliste INT, 
    FOREIGN KEY (nJournaliste) REFERENCES Journaliste(nJournaliste) ON DELETE SET NULL,
    FOREIGN KEY (nDefile) REFERENCES Defile(nDefile) ON DELETE CASCADE
);

CREATE TABLE AssisterC (
    heureDepart TIMESTAMP,
    heureArrivee TIMESTAMP,
    nDefile INT, 
    nCreateur INT, 
    FOREIGN KEY (nDefile) REFERENCES Defile(nDefile) ON DELETE CASCADE,
    FOREIGN KEY (nCreateur) REFERENCES Createur(nCreateur) ON DELETE SET NULL
);

CREATE TABLE InterviewM (
    nInterview INT PRIMARY KEY,
    heureDebut TIMESTAMP,
    heureFin TIMESTAMP,
    nJournaliste INT, 
    nMannequin INT, 
    FOREIGN KEY (nJournaliste) REFERENCES Journaliste(nJournaliste) ON DELETE CASCADE,
    FOREIGN KEY (nMannequin) REFERENCES Mannequin(nMannequin) ON DELETE SET NULL
);

CREATE TABLE InterviewC (
    nInterview INT PRIMARY KEY,
    heureDebut TIMESTAMP,
    heureFin TIMESTAMP,
    nJournaliste INT, 
    nCreateur INT, 
    FOREIGN KEY (nJournaliste) REFERENCES Journaliste(nJournaliste) ON DELETE CASCADE,
    FOREIGN KEY (nCreateur) REFERENCES Createur(nCreateur) ON DELETE SET NULL
);

CREATE TABLE InterviewI (
    nInterview INT PRIMARY KEY,
    heureDebut TIMESTAMP,
    heureFin TIMESTAMP,
    nJournaliste INT, 
    nInvite INT, 
    FOREIGN KEY (nJournaliste) REFERENCES Journaliste(nJournaliste) ON DELETE CASCADE,
    FOREIGN KEY (nInvite) REFERENCES Invite(nInvite) ON DELETE SET NULL
);

CREATE TABLE Sponsoriser (
    dateSponsor DATE,
    typeSponsor VARCHAR(50),
    nSponsor INT, 
    nDefile INT, 
    FOREIGN KEY (nSponsor) REFERENCES Sponsor(nSponsor) ON DELETE CASCADE,
    FOREIGN KEY (nDefile) REFERENCES Defile(nDefile) ON DELETE CASCADE
);

CREATE TABLE Participer (
    nMannequin INT not null, 
    nDefile INT not null, 
    nTenue INT NOT NULL, 
    FOREIGN KEY (nMannequin) REFERENCES Mannequin(nMannequin) ON DELETE CASCADE,
    FOREIGN KEY (nDefile) REFERENCES Defile(nDefile) ON DELETE CASCADE,
    FOREIGN KEY (nTenue) REFERENCES Tenue(nTenue) ON DELETE CASCADE
);


---------------------------------

-- Contraintes d'integrite  

---------------------------------


-----------Createurs---------

--Un createur doit avoir au moins une collection pour participer a un defile

CREATE OR REPLACE TRIGGER Verifier_Collection_Createur
BEFORE INSERT ON Assister 
FOR EACH ROW

DECLARE
    v_count INT;
BEGIN
    -- Compter le nombre de collections pour le createur
    SELECT COUNT(*)
    INTO v_count
    FROM Collection
    WHERE nCreateur = :NEW.nCreateur;

    -- Verification  
    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le créateur doit avoir au moins une collection pour participer à un défilé.');
    END IF;
END;
/

-----------Sponsor---------

CREATE OR REPLACE TRIGGER Verif_Nb_Defiles_Sponsor
BEFORE INSERT ON Sponsoriser
FOR EACH ROW
DECLARE
    v_count INT;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Sponsoriser
    WHERE nSponsor = :NEW.nSponsor;

    IF v_count >= 3 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Un sponsor ne peut pas sponsoriser plus de 3 défilés.');
    END IF;
END;
/


-----------Mannequin---------

CREATE OR REPLACE TRIGGER Verif_Nb_Defiles_Mannequin
BEFORE INSERT ON Participer
FOR EACH ROW
DECLARE
    v_count INT;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Participer p
    JOIN Defile d ON p.nDefile = d.nDefile
    WHERE p.nMannequin = :NEW.nMannequin
    AND TRUNC(d.heureDebut) = TRUNC(SYSDATE);  -- Compare la date (sans l'heure)

    IF v_count >= 3 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Un mannequin ne peut pas défiler plus de 3 fois par jour.');
    END IF;
END;
/

--
CREATE OR REPLACE TRIGGER Verif_Nb_Tenues_Mannequin
BEFORE INSERT ON Participer
FOR EACH ROW
DECLARE
    v_count INT;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Participer
    WHERE nMannequin = :NEW.nMannequin
    AND nDefile = :NEW.nDefile;

    IF v_count >= 5 THEN
        RAISE_APPLICATION_ERROR(-20005, 'Un mannequin ne peut pas être affecté à plus de 5 tenues au cours d''un même défilé.');
    END IF;
END;
/


-----------Tenue---------

--chaque mannequin porte une tenue de sa taille.
CREATE OR REPLACE TRIGGER Check_Mannequin_Tenue_Taille
BEFORE INSERT OR UPDATE ON Participer
FOR EACH ROW
DECLARE
    mannequin_taille NUMBER(5, 2);
    tenue_taille NUMBER(5, 2);
BEGIN
    -- Récupérer la taille du mannequin
    SELECT taille INTO mannequin_taille 
    FROM Mannequin
    WHERE nMannequin = :NEW.nMannequin;

    -- Récupérer la taille de la tenue
    SELECT taille INTO tenue_taille 
    FROM Tenue
    WHERE nTenue = :NEW.nTenue;

    -- Vérifier la correspondance des tailles
    IF mannequin_taille != tenue_taille THEN
        RAISE_APPLICATION_ERROR(-20001, 'La taille de la tenue doit correspondre à la taille du mannequin.');
    END IF;
END;
/

--il faut le nCreateur associé à la tenue correspond bien au nCreateur de la collection dans laquelle la tenue est insérée (nCollection).
CREATE OR REPLACE TRIGGER trg_verif_createur_tenue
BEFORE INSERT ON Tenue
FOR EACH ROW
DECLARE
    ncreat_coll INT;
BEGIN
    -- Récupérer le nCreateur associé à la collection spécifiée dans l'insertion
    SELECT nCreateur INTO ncreat_coll
    FROM Collection
    WHERE nCollection = :NEW.nCollection;

    -- Comparer si le nCreateur de la table Tenue correspond à celui de Collection
    IF :NEW.nCreateur != ncreat_coll THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le nCreateur ne correspond pas à celui de la collection.');
    END IF;
END;
/


-------------------Collection-----------
--update nbrcollection when inserting or deletting collection 
CREATE OR REPLACE TRIGGER T 
AFTER INSERT OR DELETE ON Tenue 
for each row 
begin 
    if inserting then 
        update Collection set 
        nbrTenues = nbrTenues + 1 
        where nCollection = :new.nCollection;
    end if;
    
    if deleting then 
        update Collection set 
        nbrTenues = nbrTenues - 1 
        where nCollection = :old.nCollection;
    end if;
end;
/

--	Une collection doit contenir au moins 10 tenues pour être considérée comme complète et être présentée lors d’un défilé.
CREATE OR REPLACE TRIGGER check_collection_tenues
BEFORE INSERT ON Participer
FOR EACH ROW
DECLARE
    nbr_tenues INT;
BEGIN
    -- Récupérer le nombre de tenues dans la collection associée à la tenue
    SELECT nbrTenues
    INTO nbr_tenues
    FROM Collection
    WHERE nCollection = (SELECT nCollection 
                        FROM Tenue
                        WHERE nTenue = :NEW.nTenue);

    -- Vérifier si le nombre de tenues est inférieur à 10
    IF nbr_tenues < 10 THEN
        RAISE_APPLICATION_ERROR(-20001, 'La collection associée à cette tenue doit contenir au moins 10 tenues.');
    END IF;
END;
/


--•	Les tenues doivent être créées par le créateur qui travaille pour la maison de mode qui organise le défilé.
CREATE OR REPLACE TRIGGER chk_createur_maisonmode
BEFORE INSERT OR UPDATE ON Participer
FOR EACH ROW
DECLARE
    v_nomMaisonModeDefile VARCHAR(50);
    v_nomMaisonModeCreateur VARCHAR(50);
BEGIN
    -- Récupérer la maison de mode du défilé
    SELECT nomMaisonMode
    INTO v_nomMaisonModeDefile
    FROM Defile
    WHERE nDefile = :NEW.nDefile;

    -- Récupérer la maison de mode du créateur
    SELECT nomMaisonMode
    INTO v_nomMaisonModeCreateur
    FROM Createur
    WHERE nCreateur = (SELECT nCreateur
                    FROM Tenue
                    WHERE nTenue = :NEW.nTenue);

    -- Vérifier que les deux maisons de mode correspondent
    IF v_nomMaisonModeDefile != v_nomMaisonModeCreateur THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le créateur de la tenue doit appartenir à la maison de mode organisant le défilé.');
    END IF;
END;
/