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

BEGIN
    -- Vérification et création des utilisateurs
    FOR user_info IN (
        SELECT 'Invites' AS username, '2024' AS password FROM DUAL
        UNION ALL
        SELECT 'Mannequins', '2024' FROM DUAL
        UNION ALL
        SELECT 'Createurs', '2024' FROM DUAL
        UNION ALL
        SELECT 'MaisonsDeModes', '2024' FROM DUAL
    ) LOOP
        BEGIN
            EXECUTE IMMEDIATE 'CREATE USER ' || user_info.username || ' IDENTIFIED BY ' || user_info.password;
            DBMS_OUTPUT.PUT_LINE('Utilisateur "' || user_info.username || '" créé avec succès.');
        EXCEPTION
            WHEN OTHERS THEN
                IF SQLCODE = -1920 THEN
                    DBMS_OUTPUT.PUT_LINE('Utilisateur "' || user_info.username || '" existe déjà.');
                ELSE
                    RAISE;
                END IF;
        END;
    END LOOP;
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


---------------DEFILE------------------


CREATE OR REPLACE TRIGGER Check_Lmt_tnue
BEFORE INSERT ON Participer
FOR EACH ROW
DECLARE
    v_total_tenues INT;
BEGIN
    
    SELECT COUNT(*)
    INTO v_total_tenues
    FROM Participer
    WHERE nDefile = :NEW.nDefile;

    -- Vérifier si le nombre de tenues est inférieur à 10
    IF v_total_tenues >= 10 THEN
        
        RETURN;
    ELSE
        -- Si le nombre de tenues est inférieur à 10, lever une erreur
        RAISE_APPLICATION_ERROR(-20003, 'Un défilé doit contenir au moins 10 tenues.');
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

--il faut que le nCreateur associé à la tenue correspond bien au nCreateur de la collection dans laquelle la tenue est insérée (nCollection).
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


-- le nomMaisonMode dans la table Collection doit etre le même que dans la table Createur
CREATE OR REPLACE TRIGGER trg_verif_createur_maisonmode
BEFORE INSERT ON Collection
FOR EACH ROW
DECLARE
    nommais_creat VARCHAR(50);
BEGIN
    -- Récupérer le nomMaisonMode correspondant au nCreateur donné
    SELECT nomMaisonMode INTO nommais_creat
    FROM Createur
    WHERE nCreateur = :NEW.nCreateur;

    -- Vérifier si nomMaisonMode dans Collection correspond à celui de Createur
    IF :NEW.nomMaisonMode != nommais_creat THEN
        RAISE_APPLICATION_ERROR(-20001, 'Le nCreateur ne correspond pas à celui de la collection.');
    END IF;
END;
/

----------INVITE-------------------------------

CREATE OR REPLACE TRIGGER Check_Limit_dePlaces
BEFORE INSERT ON AssisterI
FOR EACH ROW
DECLARE
    total_invites INT;
    places_disponibles INT;
BEGIN
    -- je compte le nombre d'invités qui assiste avec table ASSISTER I 
    SELECT COUNT(*)
    INTO total_invites
    FROM AssisterI
    WHERE nDefile = :NEW.nDefile;

    -- Obtenir le nombre de places disponibles pour ce défilé
    SELECT nbrPlaceMax
    INTO places_disponibles
    FROM Defile
    WHERE nDefile = :NEW.nDefile;

    -- Vérifier si le nombre d'invités dépasse la capacité maximale
    IF total_invites >= places_disponibles THEN
        RAISE_APPLICATION_ERROR(-20002, 'Le nombre d''invités pour ce défilé dépasse la capacité maximale.');
    END IF;
END;
/


--------------JOURNALISTE---------------------

CREATE OR REPLACE TRIGGER Check_Journaliste
BEFORE INSERT ON AssisterJ
FOR EACH ROW
DECLARE
    v_total_defiles INT;
BEGIN
    -- Compter le nombre de défilés auxquels le journaliste est déjà inscrit ce jour-là
    SELECT COUNT(*)
    INTO v_total_defiles
    FROM AssisterJ a
    JOIN Defile d ON a.nDefile = d.nDefile
    WHERE a.nJournaliste = :NEW.nJournaliste
      AND TRUNC(d.dateDefile) = TRUNC(:NEW.heureDepart);  -- Comparer la date sans l'heure

    -- Vérifier si le journaliste est déjà inscrit à 5 défilés ce jour-là
    IF v_total_defiles >= 5 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Un journaliste ne peut pas assister à plus de cinq défilés par jour.');
    END IF;
END;
/



---------------------------------

-- Les vues et droits d'accees 

---------------------------------


----------CREATEUR-----------------
----------LES VUES DU CREATEUR-------------

-------------cette vue va associer les createurs a leur collections et les tenues associés-------------

CREATE OR REPLACE VIEW V_Creat_Tenue_Col AS 
SELECT 
    cr.nCreateur,
    cr.nom AS NomCreateur,
    cr.prenom AS PrenomCreateur,
    c.nCollection,
    c.nomCollection,
    c.themeCollection,
    c.saison,
    t.nTenue,
    t.nomTenue,
    t.description,
    t.categorieTenue,
    t.taille,
    t.prix
FROM 
    Createur cr, Collection c, Tenue t
WHERE 
    cr.nCreateur = c.nCreateur
    AND c.nCollection = t.nCollection; 

------------------------Affiche les défilés où les collections du créateur sont présentées--------------------

CREATE OR REPLACE VIEW V_Creat_Col_Def AS
SELECT 
    cr.nCreateur,
    cr.nom AS NomCreateur,
    cr.prenom AS PrenomCreateur,
    c.nCollection,
    c.nomCollection,
    d.nDefile,
    d.lieu,
    d.dateDefile,
    d.heureDebut,
    d.heureFin,
    d.theme,
    d.descriptionDefile
FROM 
    Createur cr, Collection c, Defile d
WHERE 
    cr.nCreateur = c.nCreateur
    AND c.nomMaisonMode = d.nomMaisonMode;

-- Droits pour les utilisateurs
GRANT SELECT ON V_Creat_Tenue_Col TO Createurs;
GRANT SELECT ON V_Creat_Col_Def TO Createurs;
GRANT SELECT, INSERT, UPDATE, DELETE ON Tenue TO Createurs;
GRANT SELECT, INSERT, UPDATE, DELETE ON Collection TO Createurs;









---------MAISON DE MODE-------------------


----VUES---
-----------Liste des collections produites par une maison de mode------------------------
CREATE OR REPLACE VIEW V_Maison_Col AS
SELECT  
    mm.nomMaisonMode,
    c.nCollection,
    c.nomCollection,
    c.themeCollection,
    c.saison,
    c.nbrTenues
FROM 
    MaisonMode mm, Collection c
WHERE 
    mm.nomMaisonMode = c.nomMaisonMode;

---------------------Informations des défilés organisés par une maison de mode------------------------------
CREATE OR REPLACE VIEW V_Maison_Def AS
SELECT 
    mm.nomMaisonMode,
    d.nDefile,
    d.lieu,
    d.dateDefile,
    d.heureDebut,
    d.heureFin,
    d.theme,
    d.descriptionDefile,
    d.nbrPlaceMax
FROM 
    MaisonMode mm, Defile d
WHERE 
    mm.nomMaisonMode = d.nomMaisonMode;

------------------------------Liste des mannequins participant aux défilés d’une maison de mode-----------------------
CREATE OR REPLACE VIEW V_Maison_Def_Mannequins AS
SELECT 
    mm.nomMaisonMode,
    d.nDefile,
    m.nMannequin,
    m.nom AS NomMannequin,
    m.prenom AS PrenomMannequin,
    m.genre,
    m.morphologie
FROM 
    MaisonMode mm, Defile d, Participer p, Mannequin m
WHERE 
    mm.nomMaisonMode = d.nomMaisonMode
    AND d.nDefile = p.nDefile
    AND p.nMannequin = m.nMannequin;


GRANT SELECT ON V_Maison_Col TO MaisonsDeModes;
GRANT SELECT ON V_Maison_Def TO MaisonsDeModes;
GRANT SELECT, INSERT, UPDATE, DELETE ON Collection TO MaisonsDeModes;
GRANT SELECT, INSERT, UPDATE, DELETE ON Defile TO MaisonsDeModes;







--------MANNEQUIN-------------$*
---VUES------------
-----Vue des défilés où le mannequin est programme
CREATE OR REPLACE VIEW Vue_Mannequin_Defiles AS
SELECT 
    m.nMannequin,
    m.nom AS NomMannequin,
    m.prenom AS PrenomMannequin,
    m.genre,
    m.morphologie,
    d.nDefile,
    d.lieu,
    d.dateDefile,
    d.heureDebut,
    d.heureFin,
    d.theme,
    d.descriptionDefile
FROM 
    Mannequin m, Defile d, Participer p
WHERE 
    m.nMannequin = p.nMannequin
    AND p.nDefile = d.nDefile;



----- Vue des tenues attribuées au mannequin pour chaque défilé
CREATE OR REPLACE VIEW Vue_Mannequin_Tenues AS
SELECT 
    m.nMannequin,
    m.nom AS NomMannequin,
    m.prenom AS PrenomMannequin,
    t.nTenue,
    t.nomTenue,
    t.description AS DescriptionTenue,
    t.categorieTenue,
    t.taille,
    t.prix,
    p.nDefile,
    d.dateDefile
FROM 
    Mannequin m, Tenue t, Defile d, Participer p
WHERE 
    m.nMannequin = p.nMannequin
    AND p.nTenue = t.nTenue
    AND p.nDefile = d.nDefile;









-- invites ------------------
-- vues

CREATE OR REPLACE VIEW V_Inv_Def AS
SELECT 
    i.nInvite,
    i.nom AS NomInvite,
    i.prenom AS PrenomInvite,
    d.nDefile,
    d.lieu,
    d.dateDefile,
    d.heureDebut,
    d.heureFin,
    d.theme,
    d.descriptionDefile
FROM 
    AssisterI ai, Defile d, Invite i
WHERE 
    ai.nDefile = d.nDefile
    AND ai.nInvite = i.nInvite;

CREATE OR REPLACE VIEW V_Inv_Col AS
SELECT 
    i.nInvite,
    i.nom AS NomInvite,
    i.prenom AS PrenomInvite,
    c.nCollection,
    c.nomCollection,
    c.themeCollection,
    c.saison,
    c.nomMaisonMode
FROM 
    AssisterI ai, Invite i, Defile d, Collection c
WHERE 
    ai.nDefile = d.nDefile
    AND ai.nInvite = i.nInvite
    AND c.nomMaisonMode = d.nomMaisonMode;

GRANT SELECT ON V_Inv_Def TO Invites;
GRANT SELECT ON V_Inv_Col TO Invites;
