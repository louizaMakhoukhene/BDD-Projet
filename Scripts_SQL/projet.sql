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

CREATE TABLE Mannequin (
    nMannequin INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INT,
    taille NUMBER(5, 2),
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

CREATE TABLE Createur (
    nCreateur INT PRIMARY KEY,
    prenom VARCHAR(50),
    nom VARCHAR(50),
    dateNaissance DATE,
    nationalite VARCHAR(50),
    anneeExperienceCreateur INT,
    nomMaisonMode VARCHAR(50),
    FOREIGN KEY (nomMaisonMode) REFERENCES MaisonMode(nomMaisonMode) ON DELETE CASCADE
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
    taille VARCHAR(10),
    prix NUMBER(10, 2),
    nomTenue VARCHAR(100),
    description VARCHAR(255),
    categorieTenue VARCHAR(50),
    nCollection INT, 
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
    FOREIGN KEY (nJournaliste) REFERENCES Journaliste(nJournaliste) ON DELETE CASCADE,
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
    nTenue INT, 
    FOREIGN KEY (nMannequin) REFERENCES Mannequin(nMannequin) ON DELETE CASCADE,
    FOREIGN KEY (nDefile) REFERENCES Defile(nDefile) ON DELETE CASCADE,
    FOREIGN KEY (nTenue) REFERENCES Tenue(nTenue) ON DELETE SET NULL
);


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




