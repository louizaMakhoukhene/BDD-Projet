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
    nomMaisonMode VARCHAR(50) NOT NULL, 
    FOREIGN KEY (nomMaisonMode) REFERENCES MaisonMode(nomMaisonMode) ON DELETE CASCADE
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
    nJournaliste INT, 
    nDefile INT, 
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


CREATE OR REPLACE TRIGGER tenue_unique_par_saison
BEFORE INSERT OR UPDATE ON Participer
FOR EACH ROW
DECLARE
    saison_collection VARCHAR(20);
    tenue_count NUMBER;
BEGIN
    -- Récupérer la saison de la collection associée à la tenue
    SELECT c.saison INTO saison_collection
    FROM Tenue t
    JOIN Collection c ON t.nCollection = c.nCollection
    WHERE t.nTenue = :NEW.nTenue;

    -- Compter le nombre de défilés pour cette tenue dans la même saison
    SELECT COUNT(*)
    INTO tenue_count
    FROM Participer p
    JOIN Defile d ON p.nDefile = d.nDefile
    JOIN Tenue t ON p.nTenue = t.nTenue
    JOIN Collection c ON t.nCollection = c.nCollection
    WHERE p.nTenue = :NEW.nTenue
    AND c.saison = saison_collection
    AND p.nDefile != :NEW.nDefile;

    -- Si la tenue est déjà présente dans un autre défilé pour la même saison, lever une erreur
    IF tenue_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'La tenue ne peut pas être présentée dans plus d’un défilé pour la même saison.');
    END IF;
END;
/

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

-------------------Defile-----------
------------------------------------

------------verifie que chaque defiles commence bien a partir de 14H----------------------------------
CREATE OR REPLACE TRIGGER chk_heure_debut
BEFORE INSERT OR UPDATE ON Defile
FOR EACH ROW
BEGIN
    -- Vérifie que l'heure de début est après 14h
    IF TO_CHAR(:NEW.heureDebut, 'HH24') < '14' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Un défilé ne peut commencer qu''à partir de 14h.');
    END IF;
END;
/


---------------------------------

-- INSERTION A LA TABLE MaisonMode


---------------------------------

INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB)
VALUES ('Off-White', 'Virgil Abloh', TO_DATE('2012-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'offwhite_logo.png', 'https://www.off---white.com');



---------------------------------

-- INSERTION A LA TABLE Mannequin


---------------------------------



INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie)
VALUES (33, 'Khan', 'Aaliyah', 27, 174.00, 56.00, 'Indienne', 'Feminin', 'Sablier');








---------------------------------

-- INSERTION A LA TABLE Invite


---------------------------------


INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession)
VALUES (33, 'Durand', 'Elise', TO_DATE('1992-03-15', 'YYYY-MM-DD'), 'Francaise', 'Peintre');






---------------------------------

-- INSERTION A LA TABLE Journaliste


---------------------------------





INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail)
VALUES (32, 'Klein', 'Marie', 'France Info', 'Sante', '0987654321', 'marie.klein@example.com');









---------------------------------

-- INSERTION A LA TABLE Sponsor


---------------------------------




INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone)
VALUES (33, 'ModeVision', 'Mode', 'contact@modevision.com', '0987654321');









---------------------------------

-- INSERTION A LA TABLE Createur


---------------------------------




INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode)
VALUES (33, 'Elena', 'Rodriguez', TO_DATE('1990-09-12', 'YYYY-MM-DD'), 'Espagnole', 5, 'Valentino');





---------------------------------

-- INSERTION A LA TABLE Collection


---------------------------------



INSERT INTO Collection (nCollection, nomCollection, themeCollection, saison, nbrTenues, nCreateur, nomMaisonMode)
VALUES (34, 'Reflets Cristallins', 'Elegance Givree', 'Hiver', 0, 15, 'Versace');






---------------------------------

-- INSERTION A LA TABLE Defile


---------------------------------

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    14,
    'Palace of Versailles, France',
    TO_TIMESTAMP('2025-01-15 14:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-01-15 18:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-01-15', 'YYYY-MM-DD'),
    'Rêve Baroque',
    'Collection inspirée du baroque français.',
    250,
    'Alberta Ferretti'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    15,
    'Golden Gate Park, San Francisco',
    TO_TIMESTAMP('2025-02-10 16:20:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-02-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-02-10', 'YYYY-MM-DD'),
    'Vents de Liberté',
    'Exploration des styles audacieux et modernes.',
    180,
    'Alexander McQueen'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    16,
    'Sydney Opera House, Sydney',
    TO_TIMESTAMP('2025-03-05 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-05 23:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-03-05', 'YYYY-MM-DD'),
    'Océans Infinis',
    'Collection inspirée des fonds marins et des vagues.',
    300,
    'Ann Demeulemeester'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    17,
    'Taj Mahal Gardens, India',
    TO_TIMESTAMP('2025-03-20 18:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-20 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-03-20', 'YYYY-MM-DD'),
    'Éclat et Tradition',
    'Mariage entre culture indienne et design moderne.',
    400,
    'Armani'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    18,
    'Great Wall of China, Beijing',
    TO_TIMESTAMP('2025-04-08 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-08 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-04-08', 'YYYY-MM-DD'),
    'Dynastie Moderne',
    'Collection inspirée par l’art ancien chinois.',
    500,
    'Balenciaga'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    19,
    'Eiffel Tower Base, Paris',
    TO_TIMESTAMP('2025-05-01 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-05-01 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-05-01', 'YYYY-MM-DD'),
    'Parisienne Éternelle',
    'Hommage au style intemporel parisien.',
    250,
    'Bottega Veneta'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    20,
    'Mount Fuji, Japan',
    TO_TIMESTAMP('2025-05-25 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-05-25 20:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-05-25', 'YYYY-MM-DD'),
    'Nature Sublime',
    'Collection célébrant la beauté de la nature japonaise.',
    350,
    'Burberry'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    21,
    'Dubai Marina, UAE',
    TO_TIMESTAMP('2025-06-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-06-10 22:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-06-10', 'YYYY-MM-DD'),
    'Or et Déserts',
    'Collection inspirée par les paysages désertiques.',
    500,
    'Chanel'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    22,
    'Cape Town, South Africa',
    TO_TIMESTAMP('2025-07-05 17:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-07-05 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-07-05', 'YYYY-MM-DD'),
    'Afrique Moderne',
    'Éclats de couleurs et d’art africain revisités.',
    280,
    'Dior'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    23,
    'Red Square, Moscow',
    TO_TIMESTAMP('2025-08-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-08-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2025-08-01', 'YYYY-MM-DD'),
    'Tsars Modernes',
    'Collection inspirée des tsars russes.',
    400,
    'Dolce Gabbana'
);
INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    24,
    'Sydney Opera House, Sydney',
    TO_TIMESTAMP('2026-01-15 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-01-15 18:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-01-15', 'YYYY-MM-DD'),
    'Océan et Transparence',
    'Inspiré par les vagues et la lumière sur l’eau.',
    250,
    'Ermenegildo Zegna'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    25,
    'Taj Mahal Gardens, Agra',
    TO_TIMESTAMP('2026-02-10 17:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-02-10 20:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-02-10', 'YYYY-MM-DD'),
    'Éclat de l’Orient',
    'Mélange de traditions indiennes et de haute couture.',
    300,
    'Fendi'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    26,
    'Golden Gate Park, San Francisco',
    TO_TIMESTAMP('2026-03-05 15:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-03-05 17:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-03-05', 'YYYY-MM-DD'),
    'Modernité et Minimalisme',
    'Focus sur des lignes épurées et des tons neutres.',
    180,
    'Givenchy'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    27,
    'Forbidden City, Beijing',
    TO_TIMESTAMP('2026-04-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-04-10 21:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-04-10', 'YYYY-MM-DD'),
    'Dynasties et Modernité',
    'Inspiration des vêtements traditionnels chinois revisités.',
    220,
    'Gucci'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    28,
    'Table Mountain, Cape Town',
    TO_TIMESTAMP('2026-05-20 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-05-20 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-05-20', 'YYYY-MM-DD'),
    'Couleurs de l’Afrique',
    'Un hommage à la diversité culturelle et artistique africaine.',
    200,
    'Hermes'
);
INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    29,
    'Santorini Cliffs, Greece',
    TO_TIMESTAMP('2026-06-25 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-06-25 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-06-25', 'YYYY-MM-DD'),
    'Blanc et Pureté',
    'Une exploration du blanc et de la simplicité élégante.',
    250,
    'Haider Ackermann'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    30,
    'Eiffel Tower Lawn, Paris',
    TO_TIMESTAMP('2026-07-14 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-07-14 23:59:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-07-14', 'YYYY-MM-DD'),
    'Révolution et Haute Couture',
    'Célébration de la mode et de l’histoire française.',
    300,
    'Isabel Marant'
);
INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    31,
    'Red Square, Moscow',
    TO_TIMESTAMP('2026-08-01 18:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-08-01 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-08-01', 'YYYY-MM-DD'),
    'Étoiles du Nord',
    'Élégance hivernale inspirée par les cultures slaves.',
    220,
    'Kenzo'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    32,
    'Grand Canyon, Arizona',
    TO_TIMESTAMP('2026-09-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-09-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-09-10', 'YYYY-MM-DD'),
    'Nature et Grandiose',
    'Des silhouettes imposantes dans un décor spectaculaire.',
    150,
    'Lacoste'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    33,
    'Christ the Redeemer, Rio de Janeiro',
    TO_TIMESTAMP('2026-10-05 17:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-10-05 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-10-05', 'YYYY-MM-DD'),
    'Carnaval et Exubérance',
    'Une célébration haute en couleur de la mode brésilienne.',
    280,
    'Louis Vuitton'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    34,
    'Antelope Canyon, Arizona',
    TO_TIMESTAMP('2026-11-15 15:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-11-15 17:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-11-15', 'YYYY-MM-DD'),
    'Textures et Lumière',
    'Une collection inspirée par la géométrie naturelle et la lumière.',
    120,
    'Marc Jacobs'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    35,
    'Colosseum, Rome',
    TO_TIMESTAMP('2026-12-05 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-12-05 22:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2026-12-05', 'YYYY-MM-DD'),
    'Gladiateurs et Grâces',
    'Fusion entre le style antique romain et le moderne.',
    250,
    'Miu Miu'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    36,
    'Great Wall of China, Beijing',
    TO_TIMESTAMP('2027-01-20 14:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-01-20 16:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-01-20', 'YYYY-MM-DD'),
    'Harmonie et Éternité',
    'Une exploration des motifs anciens et du design futuriste.',
    300,
    'Moschino'
);


INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    37,
    'Neuschwanstein Castle, Germany',
    TO_TIMESTAMP('2027-02-14 17:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-02-14 19:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-02-14', 'YYYY-MM-DD'),
    'Rêves et Romance',
    'Des robes de conte de fées dans un décor enchanteur.',
    200,
    'Oscar de la Renta'
);


INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    38,
    'Sydney Opera House, Australia',
    TO_TIMESTAMP('2027-03-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-03-10 21:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-03-10', 'YYYY-MM-DD'),
    'Ondes et Architecture',
    'Des designs fluides inspirés par larchitecture moderne.',
    220,
    'Prada'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    39,
    'Taj Mahal, India',
    TO_TIMESTAMP('2027-04-15 17:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-04-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-04-15', 'YYYY-MM-DD'),
    'Richesses et Ornements',
    'Une ode à lartisanat et aux détails somptueux.',
    300,
    'Ralph Lauren'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    40,
    'Santorini, Greece',
    TO_TIMESTAMP('2027-05-25 18:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-05-25 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-05-25', 'YYYY-MM-DD'),
    'Éclat Méditerranéen',
    'Des créations légères et lumineuses, parfaites pour lété.',
    180,
    'Saint Laurent'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    41,
    'Central Park, New York',
    TO_TIMESTAMP('2027-06-20 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-06-20 18:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-06-20', 'YYYY-MM-DD'),
    'Nature et Métropole',
    'Une collection mêlant nature et modernité urbaine.',
    250,
    'Salvatore Ferragamo'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    42,
    'Marrakech Gardens, Morocco',
    TO_TIMESTAMP('2027-07-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-07-10 21:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-07-10', 'YYYY-MM-DD'),
    'Mystique et Évasion',
    'Une collection inspirée des couleurs et motifs marocains.',
    200,
    'Thom Browne'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    43,
    'Golden Gate Bridge, San Francisco',
    TO_TIMESTAMP('2027-08-05 17:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-08-05 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-08-05', 'YYYY-MM-DD'),
    'Modernité et Énergie',
    'Des looks audacieux pour un style urbain et dynamique.',
    240,
    'Tommy Hilfiger'
);

INSERT INTO Defile (
    nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode
)
VALUES (
    44,
    'Mont-Saint-Michel, France',
    TO_TIMESTAMP('2027-09-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2027-09-15 22:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2027-09-15', 'YYYY-MM-DD'),
    'Mystère et Romance',
    'Des créations poétiques pour une ambiance médiévale.',
    190,
    'Valentino'
);
