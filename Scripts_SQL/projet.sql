BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Participer CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN 
            RAISE; 
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Sponsoriser CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Interview CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Assister CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Tenue CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Collection CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Defile CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Createur CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Mannequin CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Sponsor CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Invite CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Journaliste CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE MaisonMode CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
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
    --dateNaissance DATE CHECK (dateNaissance <= TO_DATE('2006-10-30', 'YYYY-MM-DD'))
    dateNaissance DATE,
    nationalite VARCHAR(50),
    anneeExperienceCreateur INT,
    nomMaisonMode VARCHAR(50) NOT NULL,
    FOREIGN KEY (nomMaisonMode) REFERENCES MaisonMode(nomMaisonMode) ON DELETE CASCADE
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
    nomMaisonMode VARCHAR(50), 
    FOREIGN KEY (nomMaisonMode) REFERENCES MaisonMode(nomMaisonMode) ON DELETE CASCADE
);

CREATE TABLE Collection (
    nCollection INT PRIMARY KEY,
    nomCollection VARCHAR(100),
    themeCollection VARCHAR(50),
    saison VARCHAR(20),
    nbrTenues INT,
    nCreateur INT, 
    nomMaisonMode VARCHAR(50), 
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
    nCreateur INT, 
    FOREIGN KEY (nCollection) REFERENCES Collection(nCollection) ON DELETE SET NULL,
    FOREIGN KEY (nCreateur) REFERENCES Createur(nCreateur) ON DELETE SET NULL
);

CREATE TABLE Assister (
    heureDepart TIMESTAMP,
    heureArrivee TIMESTAMP,
    nJournaliste INT, 
    nDefile INT, 
    nCreateur INT, 
    nInvite INT,
    FOREIGN KEY (nJournaliste) REFERENCES Journaliste(nJournaliste) ON DELETE SET NULL,
    FOREIGN KEY (nDefile) REFERENCES Defile(nDefile) ON DELETE CASCADE,
    FOREIGN KEY (nCreateur) REFERENCES Createur(nCreateur) ON DELETE SET NULL,
    FOREIGN KEY (nInvite) REFERENCES Invite(nInvite) ON DELETE SET NULL
);

CREATE TABLE Interview (
    nInterview INT PRIMARY KEY,
    heureDebut TIMESTAMP,
    heureFin TIMESTAMP,
    nJournaliste INT, 
    nInvite INT, 
    nMannequin INT, 
    nCreateur INT, 
    FOREIGN KEY (nJournaliste) REFERENCES Journaliste(nJournaliste) ON DELETE CASCADE,
    FOREIGN KEY (nInvite) REFERENCES Invite(nInvite) ON DELETE SET NULL,
    FOREIGN KEY (nMannequin) REFERENCES Mannequin(nMannequin) ON DELETE SET NULL,
    FOREIGN KEY (nCreateur) REFERENCES Createur(nCreateur) ON DELETE SET NULL
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
    nMannequin INT, 
    nDefile INT, 
    nTenue INT NOT NULL, 
    FOREIGN KEY (nMannequin) REFERENCES Mannequin(nMannequin) ON DELETE CASCADE,
    FOREIGN KEY (nDefile) REFERENCES Defile(nDefile) ON DELETE CASCADE,
    FOREIGN KEY (nTenue) REFERENCES Tenue(nTenue) ON DELETE CASCADE
);


---------------------------------

-- Contraintes d'integrite  

---------------------------------


-----------Createurs---------

CREATE OR REPLACE TRIGGER verif_createur_unique_par_maison_mode
BEFORE INSERT OR UPDATE ON Createur
FOR EACH ROW
DECLARE
    v_count INT;
BEGIN

    SELECT COUNT(*)
    INTO v_count
    FROM Createur
    WHERE nomMaisonMode = :NEW.nomMaisonMode
    AND nCreateur != :NEW.nCreateur; -- S'assurer que l'on ne compte pas le créateur en cours d'insertion ou de mise à jour

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Chaque maison de mode ne peut avoir qu"un seul créateur.');
    END IF;
END;
/


--(Un createur doit avoir au moins une collection pour participer a un defile)

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


--Un Ceateur doit avoir au minimun 18 ans 
CREATE OR REPLACE TRIGGER Verif_Age_Createur
BEFORE INSERT OR UPDATE ON Createur
FOR EACH ROW
DECLARE
    v_age INT;
BEGIN
    v_age := TRUNC(MONTHS_BETWEEN(SYSDATE, :NEW.dateNaissance) / 12);
    
    -- Verification de l'age
    IF v_age < 18 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le créateur doit avoir au moins 18 ans.');
    END IF;
END;



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


-----------Tenu---------

CREATE OR REPLACE TRIGGER verif_tenue_unique_par_collection
BEFORE INSERT OR UPDATE ON Tenue
FOR EACH ROW
DECLARE
    v_count INT;
BEGIN
    -- Vérifier si la tenue appartient déjà à une collection
    SELECT COUNT(*)
    INTO v_count
    FROM Tenue
    WHERE nCollection = :NEW.nCollection
    AND nTenue != :NEW.nTenue; -- Assurer que l'on ne compte pas la tenue en cours d'insertion ou de mise à jour

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Chaque tenue doit appartenir à une seule collection.');
    END IF;
END;



CREATE OR REPLACE TRIGGER Verif_Tenue_Unique_Par_Saison
BEFORE INSERT OR UPDATE ON Participer
FOR EACH ROW
DECLARE
    v_saison VARCHAR(20);
BEGIN
    -- Recupere la saison du defile associe a la tenue
    SELECT saison INTO v_saison
    FROM Defile
    WHERE nDefile = :NEW.nDefile;

    -- Verification 
    IF EXISTS (
        SELECT 1
        FROM Participer p
        JOIN Defile d ON p.nDefile = d.nDefile
        WHERE p.nTenue = :NEW.nTenue
        AND d.saison = v_saison
        AND p.nDefile != :NEW.nDefile
    ) THEN
        RAISE_APPLICATION_ERROR(-20008, 'Une tenue ne peut pas être présentée dans plus d’un défilé lors d’une même saison.');
    END IF;
END;

---------------------------------

-- INSERTION A LA TABLE MaisonMode


---------------------------------


INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Chanel', 'Gabrielle Chanel', TO_DATE('1910-01-01', 'YYYY-MM-DD'), 'Paris, France', 'chanel_logo.png', 'https://www.chanel.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Dior', 'Christian Dior', TO_DATE('1946-10-08', 'YYYY-MM-DD'), 'Paris, France', 'dior_logo.png', 'https://www.dior.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Louis Vuitton', 'Louis Vuitton', TO_DATE('1854-01-01', 'YYYY-MM-DD'), 'Paris, France', 'lv_logo.png', 'https://www.louisvuitton.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Gucci', 'Guccio Gucci', TO_DATE('1921-01-01', 'YYYY-MM-DD'), 'Florence, Italy', 'gucci_logo.png', 'https://www.gucci.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Prada', 'Mario Prada', TO_DATE('1913-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'prada_logo.png', 'https://www.prada.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Versace', 'Gianni Versace', TO_DATE('1978-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'versace_logo.png', 'https://www.versace.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Hermes', 'Thierry Hermes', TO_DATE('1837-01-01', 'YYYY-MM-DD'), 'Paris, France', 'hermes_logo.png', 'https://www.hermes.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Balenciaga', 'Cristóbal Balenciaga', TO_DATE('1919-01-01', 'YYYY-MM-DD'), 'Paris, France', 'balenciaga_logo.png', 'https://www.balenciaga.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Saint Laurent', 'Yves Saint Laurent', TO_DATE('1961-01-01', 'YYYY-MM-DD'), 'Paris, France', 'ysl_logo.png', 'https://www.ysl.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Givenchy', 'Hubert de Givenchy', TO_DATE('1952-01-01', 'YYYY-MM-DD'), 'Paris, France', 'givenchy_logo.png', 'https://www.givenchy.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Burberry', 'Thomas Burberry', TO_DATE('1856-01-01', 'YYYY-MM-DD'), 'London, UK', 'burberry_logo.png', 'https://www.burberry.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Valentino', 'Valentino Garavani', TO_DATE('1960-01-01', 'YYYY-MM-DD'), 'Rome, Italy', 'valentino_logo.png', 'https://www.valentino.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Armani', 'Giorgio Armani', TO_DATE('1975-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'armani_logo.png', 'https://www.armani.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Ralph Lauren', 'Ralph Lauren', TO_DATE('1967-01-01', 'YYYY-MM-DD'), 'New York, USA', 'ralphlauren_logo.png', 'https://www.ralphlauren.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Fendi', 'Adele and Edoardo Fendi', TO_DATE('1925-01-01', 'YYYY-MM-DD'), 'Rome, Italy', 'fendi_logo.png', 'https://www.fendi.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Lacoste', 'Rene Lacoste', TO_DATE('1933-01-01', 'YYYY-MM-DD'), 'Paris, France', 'lacoste_logo.png', 'https://www.lacoste.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Kenzo', 'Kenzo Takada', TO_DATE('1970-01-01', 'YYYY-MM-DD'), 'Paris, France', 'kenzo_logo.png', 'https://www.kenzo.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Moschino', 'Franco Moschino', TO_DATE('1983-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'moschino_logo.png', 'https://www.moschino.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Bottega Veneta', 'Michele Taddei', TO_DATE('1966-01-01', 'YYYY-MM-DD'), 'Vicenza, Italy', 'bottega_logo.png', 'https://www.bottegaveneta.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Dolce Gabbana', 'Domenico Dolce Stefano Gabbana', TO_DATE('1985-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'dg_logo.png', 'https://www.dolcegabbana.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Salvatore Ferragamo', 'Salvatore Ferragamo', TO_DATE('1927-01-01', 'YYYY-MM-DD'), 'Florence, Italy', 'ferragamo_logo.png', 'https://www.ferragamo.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Tommy Hilfiger', 'Tommy Hilfiger', TO_DATE('1985-01-01', 'YYYY-MM-DD'), 'New York, USA', 'tommy_logo.png', 'https://www.tommy.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Marc Jacobs', 'Marc Jacobs', TO_DATE('1986-01-01', 'YYYY-MM-DD'), 'New York, USA', 'marcjacobs_logo.png', 'https://www.marcjacobs.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Alexander McQueen', 'Alexander McQueen', TO_DATE('1992-01-01', 'YYYY-MM-DD'), 'London, UK', 'mcqueen_logo.png', 'https://www.alexandermcqueen.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Oscar de la Renta', 'Oscar de la Renta', TO_DATE('1965-01-01', 'YYYY-MM-DD'), 'New York, USA', 'oscar_logo.png', 'https://www.oscardelarenta.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Vera Wang', 'Vera Wang', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'New York, USA', 'verawang_logo.png', 'https://www.verawang.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Ermenegildo Zegna', 'Ermenegildo Zegna', TO_DATE('1910-01-01', 'YYYY-MM-DD'), 'Trivero, Italy', 'zegna_logo.png', 'https://www.zegna.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Miu Miu', 'Miuccia Prada', TO_DATE('1993-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'miumiu_logo.png', 'https://www.miumiu.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Alberta Ferretti', 'Alberta Ferretti', TO_DATE('1980-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'alberta_logo.png', 'https://www.albertaferretti.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Thom Browne', 'Thom Browne', TO_DATE('2001-01-01', 'YYYY-MM-DD'), 'New York, USA', 'thombrowne_logo.png', 'https://www.thombrowne.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Haider Ackermann', 'Haider Ackermann', TO_DATE('2003-01-01', 'YYYY-MM-DD'), 'Paris, France', 'haider_logo.png', 'https://www.haiderackermann.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Isabel Marant', 'Isabel Marant', TO_DATE('1994-01-01', 'YYYY-MM-DD'), 'Paris, France', 'isabel_logo.png', 'https://www.isabelmarant.com');

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB) 
VALUES ('Ann Demeulemeester', 'Ann Demeulemeester', TO_DATE('1985-01-01', 'YYYY-MM-DD'), 'Antwerp, Belgium', 'ann_logo.png', 'https://www.anndemeulemeester.com');



---------------------------------

-- INSERTION A LA TABLE Mannequin


---------------------------------



INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (1, 'Hadid', 'Gigi', 29, 178.00, 54.00, 'Americaine', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (2, 'Jenner', 'Kendall', 29, 179.00, 58.00, 'Americaine', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (3, 'Hadid', 'Bella', 28, 175.00, 55.00, 'Americaine', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (4, 'Lima', 'Adriana', 42, 178.00, 60.00, 'Bresilienne', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (5, 'Banks', 'Tyra', 50, 180.00, 61.00, 'Americaine', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (6, 'Delevingne', 'Cara', 31, 173.00, 52.00, 'Britannique', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (7, 'Kroes', 'Doutzen', 38, 178.00, 55.00, 'Neerlandaise', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (8, 'Shayk', 'Irina', 37, 178.00, 57.00, 'Russe', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (9, 'Campbell', 'Naomi', 54, 175.00, 56.00, 'Britannique', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (10, 'Graham', 'Ashley', 36, 175.00, 91.00, 'Americaine', 'Feminin', 'Pomme');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (11, 'Dunn', 'Jourdan', 33, 180.00, 55.00, 'Britannique', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (12, 'Wen', 'Liu', 35, 179.00, 50.00, 'Chinoise', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (13, 'Smith', 'Jasmine', 26, 175.00, 54.00, 'Americaine', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (14, 'Bautista', 'Rita', 32, 177.00, 58.00, 'Espagnole', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (15, 'Stevens', 'Megan', 30, 176.00, 59.00, 'Britannique', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (16, 'Turlington', 'Christy', 55, 178.00, 59.00, 'Americaine', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (17, 'Soo', 'Jing', 28, 175.00, 53.00, 'Chinoise', 'Feminin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (18, 'O’Pry', 'Sean', 34, 183.00, 74.00, 'Americain', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (19, 'Gandy', 'David', 43, 185.00, 85.00, 'Britannique', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (20, 'Mackin', 'Tom', 30, 180.00, 80.00, 'Irlandais', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (21, 'Renn', 'Ethan', 25, 183.00, 76.00, 'Americain', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (22, 'Mason', 'Jaden', 29, 182.00, 79.00, 'Americain', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (23, 'Jagger', 'Jasper', 38, 184.00, 82.00, 'Britannique', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (24, 'Anderson', 'Kieran', 27, 181.00, 77.00, 'Australien', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (25, 'Hansen', 'Lars', 32, 182.00, 85.00, 'Danois', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (26, 'Gonzalez', 'Pablo', 29, 180.00, 78.00, 'Espagnol', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (27, 'Lin', 'Hao', 26, 177.00, 70.00, 'Chinois', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (28, 'Parker', 'Jon', 34, 181.00, 75.00, 'Americain', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (29, 'Santos', 'Carlos', 30, 179.00, 77.00, 'Bresilien', 'Masculin', 'Sablier');

INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie) 
VALUES (30, 'Chow', 'Ken', 29, 182.00, 81.00, 'Chinois', 'Masculin', 'Sablier');







---------------------------------

-- INSERTION A LA TABLE Invite


---------------------------------


INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (1, 'Dupont', 'Alice', TO_DATE('1990-01-15', 'YYYY-MM-DD'), 'Francaise', 'Styliste');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (2, 'Martin', 'Julien', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 'Francais', 'Designer');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (3, 'Leroy', 'Camille', TO_DATE('1992-07-30', 'YYYY-MM-DD'), 'Francaise', 'Journaliste');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (4, 'Moreau', 'Paul', TO_DATE('1988-02-12', 'YYYY-MM-DD'), 'Francais', 'Photographe');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (5, 'Garnier', 'Marie', TO_DATE('1987-04-22', 'YYYY-MM-DD'), 'Francaise', 'Modele');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (6, 'Bernard', 'Lucas', TO_DATE('1995-08-05', 'YYYY-MM-DD'), 'Francais', 'Directeur artistique');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (7, 'Lemoine', 'Sophie', TO_DATE('1991-03-19', 'YYYY-MM-DD'), 'Francaise', 'Redactrice');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (8, 'Fournier', 'Juliette', TO_DATE('1986-06-10', 'YYYY-MM-DD'), 'Francaise', 'Couturiere');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (9, 'Rousseau', 'Antoine', TO_DATE('1989-09-25', 'YYYY-MM-DD'), 'Francais', 'Charge de communication');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (10, 'Pichon', 'Nicolas', TO_DATE('1984-11-11', 'YYYY-MM-DD'), 'Francais', 'Styliste');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (11, 'Giraud', 'Laura', TO_DATE('1994-12-30', 'YYYY-MM-DD'), 'Francaise', 'Celebrite');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (12, 'Guillaume', 'Maxime', TO_DATE('1990-02-03', 'YYYY-MM-DD'), 'Francais', 'Artiste');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (13, 'Lefevre', 'Zoe', TO_DATE('1993-07-21', 'YYYY-MM-DD'), 'Francaise', 'Influenceuse');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (14, 'Fleury', 'Julien', TO_DATE('1986-05-14', 'YYYY-MM-DD'), 'Francais', 'Directeur');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (15, 'Boucher', 'Clara', TO_DATE('1988-09-08', 'YYYY-MM-DD'), 'Francaise', 'Sociologue');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (16, 'Vasseur', 'Thomas', TO_DATE('1995-01-23', 'YYYY-MM-DD'), 'Francais', 'Ecrivain');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (17, 'Leblanc', 'Emilie', TO_DATE('1992-08-17', 'YYYY-MM-DD'), 'Francaise', 'Directrice');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (18, 'Colin', 'Vincent', TO_DATE('1990-03-29', 'YYYY-MM-DD'), 'Francais', 'Architecte');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (19, 'Renaud', 'Alice', TO_DATE('1987-11-05', 'YYYY-MM-DD'), 'Francaise', 'Vendeuse');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (20, 'Dumas', 'Pierre', TO_DATE('1984-02-28', 'YYYY-MM-DD'), 'Francais', 'Producteur');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (21, 'Lemoine', 'Celine', TO_DATE('1991-07-19', 'YYYY-MM-DD'), 'Francaise', 'Artiste');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (22, 'Noel', 'Bastien', TO_DATE('1993-10-11', 'YYYY-MM-DD'), 'Francais', 'Musicien');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (23, 'Charpentier', 'Sophie', TO_DATE('1992-04-17', 'YYYY-MM-DD'), 'Francaise', 'Danseuse');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (24, 'Giraud', 'Etienne', TO_DATE('1988-12-12', 'YYYY-MM-DD'), 'Francais', 'Critique');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (25, 'Delaunay', 'Louis', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Francais', 'Scenariste');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (26, 'Richard', 'Juliette', TO_DATE('1990-09-09', 'YYYY-MM-DD'), 'Francaise', 'Comedienne');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (27, 'Ferry', 'Alexandre', TO_DATE('1994-11-21', 'YYYY-MM-DD'), 'Francais', 'Consultant');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (28, 'Laurent', 'Chloe', TO_DATE('1991-08-01', 'YYYY-MM-DD'), 'Francaise', 'Photographe');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (29, 'Lamy', 'Marc', TO_DATE('1995-03-13', 'YYYY-MM-DD'), 'Francais', 'Editeur');

INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession) 
VALUES (30, 'Gallet', 'Celine', TO_DATE('1993-05-20', 'YYYY-MM-DD'), 'Francaise', 'Graphiste');





---------------------------------

-- INSERTION A LA TABLE Journaliste


---------------------------------





INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (1, 'Dupont', 'Alice', 'Le Monde', 'Mode', '0123456789', 'alice.dupont@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (2, 'Martin', 'Julien', 'France 24', 'Culture', '0234567890', 'julien.martin@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (3, 'Leroy', 'Camille', 'Elle', 'Societe', '0345678901', 'camille.leroy@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (4, 'Moreau', 'Paul', 'Le Figaro', 'Politique', '0456789012', 'paul.moreau@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (5, 'Garnier', 'Marie', 'Vogue', 'Mode', '0567890123', 'marie.garnier@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (6, 'Bernard', 'Lucas', 'L\''Express', 'Economie', '0678901234', 'lucas.bernard@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (7, 'Lemoine', 'Sophie', 'Telerama', 'Critique', '0789012345', 'sophie.lemoine@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (8, 'Fournier', 'Juliette', 'Marianne', 'Culture', '0890123456', 'juliette.fournier@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (9, 'Rousseau', 'Antoine', 'Liberation', 'Societe', '0901234567', 'antoine.rousseau@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (10, 'Pichon', 'Nicolas', 'Le Parisien', 'Politique', '1012345678', 'nicolas.pichon@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (11, 'Giraud', 'Laura', 'Paris Match', 'Mode', '1123456789', 'laura.giraud@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (12, 'Guillaume', 'Maxime', 'France Inter', 'Actualites', '1234567890', 'maxime.guillaume@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (13, 'Lefevre', 'Zoe', 'Arte', 'Culture', '2345678901', 'zoe.lefevre@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (14, 'Fleury', 'Julien', 'RFI', 'Economie', '3456789012', 'julien.fleury@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (15, 'Boucher', 'Clara', 'BFMTV', 'Actualites', '4567890123', 'clara.boucher@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (16, 'Vasseur', 'Thomas', 'CNews', 'Societe', '5678901234', 'thomas.vasseur@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (17, 'Leblanc', 'Emilie', 'M6', 'Mode', '6789012345', 'emilie.leblanc@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (18, 'Colin', 'Vincent', 'TF1', 'Culture', '7890123456', 'vincent.colin@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (19, 'Renaud', 'Alice', 'Le Journal du Dimanche', 'Critique', '8901234567', 'alice.renaud@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (20, 'Dumas', 'Pierre', 'L\''Observateur', 'Politique', '9012345678', 'pierre.dumas@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (21, 'Lemoine', 'Celine', 'La Croix', 'Religion', '0123456780', 'celine.lemoine@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (22, 'Noel', 'Bastien', 'Les Echos', 'Economie', '1234567801', 'bastien.noel@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (23, 'Charpentier', 'Sophie', 'Le Point', 'Politique', '2345678902', 'sophie.charpentier@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (24, 'Giraud', 'Etienne', 'Les Inrockuptibles', 'Culture', '3456789013', 'etienne.giraud@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (25, 'Delaunay', 'Louis', 'CNews', 'Actualites', '4567890124', 'louis.delaunay@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (26, 'Richard', 'Juliette', 'BFM Business', 'Economie', '5678901235', 'juliette.richard@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (27, 'Ferry', 'Alexandre', 'M6', 'Actualites', '6789012346', 'alexandre.ferry@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (28, 'Laurent', 'Chloe', 'France 3', 'Societe', '7890123457', 'chloe.laurent@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (29, 'Lamy', 'Marc', 'Radio Nova', 'Culture', '8901234568', 'marc.lamy@example.com');

INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail) 
VALUES (30, 'Gallet', 'Celine', 'Arte', 'Critique', '9012345679', 'celine.gallet@example.com');








---------------------------------

-- INSERTION A LA TABLE Sponsor


---------------------------------




INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (1, 'LuxeCorp', 'Mode', 'contact@luxecorp.com', '0123456789');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (2, 'FashionCo', 'Beaute', 'info@fashionco.com', '0234567890');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (3, 'StyleGroup', 'Accessoires', 'hello@stylegroup.com', '0345678901');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (4, 'ChicBrand', 'Vetements', 'support@chicbrand.com', '0456789012');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (5, 'EliteFashion', 'Mode', 'contact@elitefashion.com', '0567890123');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (6, 'GlamourWorks', 'Cosmetiques', 'info@glamourworks.com', '0678901234');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (7, 'TrendyStyle', 'Accessoires', 'hello@trendystyle.com', '0789012345');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (8, 'FashionHaus', 'Mode', 'support@fashionhaus.com', '0890123456');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (9, 'GlamZone', 'Beaute', 'contact@glamzone.com', '0901234567');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (10, 'ChicSociety', 'Mode', 'info@chicsociety.com', '1012345678');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (11, 'StyleMasters', 'Accessoires', 'hello@stylemasters.com', '1123456789');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (12, 'FashionTrend', 'Mode', 'support@fashiontrend.com', '1234567890');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (13, 'UrbanStyle', 'Vetements', 'contact@urbanstyle.com', '2345678901');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (14, 'CosmeticWorld', 'Cosmetiques', 'info@cosmeticworld.com', '3456789012');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (15, 'VogueHouse', 'Mode', 'hello@voguehouse.com', '4567890123');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (16, 'FashionForward', 'Accessoires', 'support@fashionforward.com', '5678901234');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (17, 'EliteStyle', 'Beaute', 'contact@elitestyle.com', '6789012345');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (18, 'ChicVibes', 'Mode', 'info@chicvibes.com', '7890123456');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (19, 'TrendyBoutique', 'Vetements', 'hello@trendyboutique.com', '8901234567');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (20, 'GlamourScene', 'Cosmetiques', 'support@glamourscene.com', '9012345678');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (21, 'FashionElite', 'Mode', 'contact@fashionelite.com', '0123456780');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (22, 'ChicAndTrendy', 'Accessoires', 'info@chicandtrendy.com', '1234567801');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (23, 'UrbanGlam', 'Beaute', 'hello@urbanglam.com', '2345678902');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (24, 'FashionSphere', 'Mode', 'support@fashionsphere.com', '3456789013');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (25, 'CosmeticLux', 'Cosmetiques', 'contact@cosmeticlux.com', '4567890124');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (26, 'GlamFashion', 'Mode', 'info@glamfashion.com', '5678901235');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (27, 'ChicPalette', 'Accessoires', 'hello@chicpalette.com', '6789012346');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (28, 'EliteGlam', 'Beaute', 'support@eliteglam.com', '7890123457');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (29, 'FashionInspire', 'Mode', 'contact@fashioninspire.com', '8901234568');

INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone) 
VALUES (30, 'StyleFusion', 'Accessoires', 'info@stylefusion.com', '9012345679');








---------------------------------

-- INSERTION A LA TABLE Createur


---------------------------------




INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (1, 'Alice', 'Dupont', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Italienne', 10, 'Chanel');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (2, 'Benjamin', 'Martin', TO_DATE('1990-03-22', 'YYYY-MM-DD'), 'Francais', 8, 'Dior');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (3, 'Clara', 'Leroy', TO_DATE('1988-11-05', 'YYYY-MM-DD'), 'Anglaise', 12, 'Louis Vuitton');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (4, 'David', 'Bernard', TO_DATE('1992-01-30', 'YYYY-MM-DD'), 'Australien', 6, 'Gucci');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (5, 'Emma', 'Rousseau', TO_DATE('1980-04-10', 'YYYY-MM-DD'), 'Russe', 15, 'Prada');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (6, 'Francois', 'Girard', TO_DATE('1983-07-25', 'YYYY-MM-DD'), 'Russe', 12, 'Versace');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (7, 'Gabrielle', 'Parker', TO_DATE('1989-08-18', 'YYYY-MM-DD'), 'Allemand', 7, 'Fendi');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (8, 'Henri', 'Lafleur', TO_DATE('1987-05-12', 'YYYY-MM-DD'), 'Malien', 9, 'Balenciaga');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (9, 'Isabelle', 'Moreau', TO_DATE('1991-09-30', 'YYYY-MM-DD'), 'Norvegienne', 5, 'Givenchy');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (10, 'Julien', 'Benoit', TO_DATE('1984-12-20', 'YYYY-MM-DD'), 'Francais', 11, 'Hermes');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (11, 'Karine', 'Dufresne', TO_DATE('1986-10-05', 'YYYY-MM-DD'), 'Francaise', 8, 'Celine');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (12, 'Louis', 'Chevalier', TO_DATE('1993-02-17', 'YYYY-MM-DD'), 'Argentin', 4, 'Saint Laurent');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (13, 'Marie', 'Gautier', TO_DATE('1981-08-14', 'YYYY-MM-DD'), 'Colombienne', 14, 'Dolce Gabbana');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (14, 'Nicolas', 'Fischer', TO_DATE('1989-11-11', 'YYYY-MM-DD'), 'Canadien', 6, 'Miu Miu');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (15, 'Olivia', 'Simon', TO_DATE('1982-07-23', 'YYYY-MM-DD'), 'Japonaise', 13, 'Lacoste');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (16, 'Pierre', 'Blanc', TO_DATE('1990-01-18', 'YYYY-MM-DD'), 'Algerien', 8, 'Kenzo');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (17, 'Quentin', 'Caron', TO_DATE('1995-03-08', 'YYYY-MM-DD'), 'Francais', 3, 'Kenzo');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (18, 'Rachel', 'Garnier', TO_DATE('1988-12-12', 'YYYY-MM-DD'), 'Francaise', 9, 'Marc Jacobs');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (19, 'Sebastien', 'Pichon', TO_DATE('1984-06-27', 'YYYY-MM-DD'), 'Italien', 10, 'Moschino');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (20, 'Tatiana', 'Laurent', TO_DATE('1991-05-30', 'YYYY-MM-DD'), 'Italienne', 5, 'Isabel Marant');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (21, 'Ulysse', 'Faure', TO_DATE('1992-09-25', 'YYYY-MM-DD'), 'Italien', 4, 'Moschino');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (22, 'Veronique', 'Briand', TO_DATE('1987-04-14', 'YYYY-MM-DD'), 'Francaise', 11, 'Ralph Lauren');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (23, 'William', 'Bourgeois', TO_DATE('1990-10-10', 'YYYY-MM-DD'), 'Francais', 7, 'Givenchy');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (24, 'Xavier', 'Clement', TO_DATE('1985-03-03', 'YYYY-MM-DD'), 'Tunisien', 9, 'Bottega Veneta');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (25, 'Yasmine', 'Sorel', TO_DATE('1983-11-19', 'YYYY-MM-DD'), 'Marocaine', 12, 'Ermenegildo Zegna');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (26, 'Zacharie', 'Gros', TO_DATE('1994-02-01', 'YYYY-MM-DD'), 'Turque', 2, 'Balenciaga');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (27, 'Amelie', 'Bonnet', TO_DATE('1988-08-27', 'YYYY-MM-DD'), 'Algerienne', 7, 'Alexander McQueen');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (28, 'Boris', 'Vasseur', TO_DATE('1992-05-09', 'YYYY-MM-DD'), 'Indien', 5, 'Givenchy');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (29, 'Cecile', 'Marin', TO_DATE('1985-01-15', 'YYYY-MM-DD'), 'Belge', 10, 'Burberry');

INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode) 
VALUES (30, 'Dorian', 'Renaud', TO_DATE('1984-06-20', 'YYYY-MM-DD'), 'Albanaise', 12, 'Armani');
