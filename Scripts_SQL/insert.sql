-- INSERTION A LA TABLE MaisonMode
INSERT INTO MaisonMode (nomMaisonMode, nomFondateur, dateFondation, localisation, logo, siteWEB)
VALUES ('Off-White', 'Virgil Abloh', TO_DATE('2012-01-01', 'YYYY-MM-DD'), 'Milan, Italy', 'offwhite_logo.png', 'https://www.off---white.com');


-- INSERTION A LA TABLE Mannequin
INSERT INTO Mannequin (nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie)
VALUES (100, 'Khan', 'Aaliyah', 27, 174.00, 56.00, 'Indienne', 'Feminin', 'Sablier');


-- INSERTION A LA TABLE Invite
INSERT INTO Invite (nInvite, nom, prenom, dateNaissance, nationaliteInvite, profession)
VALUES (100, 'Durand', 'Elise', TO_DATE('1992-03-15', 'YYYY-MM-DD'), 'Francaise', 'Peintre');


-- INSERTION A LA TABLE Journaliste
INSERT INTO Journaliste (nJournaliste, nom, prenom, media, specialite, telephone, mail)
VALUES (100, 'Klein', 'Marie', 'France Info', 'Sante', '0987654321', 'marie.klein@example.com');


-- INSERTION A LA TABLE Sponsor
INSERT INTO Sponsor (nSponsor, nomSponsor, typeSponsor, email, telephone)
VALUES (100, 'ModeVision', 'Mode', 'contact@modevision.com', '0987654321');


-- INSERTION A LA TABLE Createur
INSERT INTO Createur (nCreateur, prenom, nom, dateNaissance, nationalite, anneeExperienceCreateur, nomMaisonMode)
VALUES (100, 'Elena', 'Rodriguez', TO_DATE('1990-09-12', 'YYYY-MM-DD'), 'Espagnole', 5, 'Off-White');


-- INSERTION A LA TABLE Collection
INSERT INTO Collection (nCollection, nomCollection, themeCollection, saison, nbrTenues, nCreateur, nomMaisonMode)
VALUES (100, 'Reflets Cristallins', 'Elegance Givree', 'Hiver', 0, 100, 'Off-White');


-- INSERTION A LA TABLE Defile
INSERT INTO Defile (nDefile, lieu, heureDebut, heureFin, dateDefile, theme, descriptionDefile, nbrPlaceMax, nomMaisonMode)  
VALUES (
    100, 
    'Paris Fashion Center', 
    TO_TIMESTAMP('2024-12-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
    TO_TIMESTAMP('2024-12-10 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
    TO_DATE('2024-12-10', 'YYYY-MM-DD'), 
    'Automne Chic', 
    'Défilé de mode présentant la collection automne 2024.', 
    500, 
    'Off-White'
);

-- INSERTION A LA TABLE Tenue
INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur)  
VALUES (
    331, 
    36.5, 
    299.99, 
    'Robe Éternelle', 
    'Robe de soirée élégante en soie avec des détails brodés.', 
    'Soirée', 
    100, 
    100
);

-- INSERTION A LA TABLE AssisterI
INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('2024-12-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-12-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 100, 100);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1987-07-15 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1987-07-15 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 32);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1990-09-10 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-09-10 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 1);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1990-03-22 15:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-03-22 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 2);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1993-01-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-01-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 3);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1992-01-30 16:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-01-30 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 4);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1994-03-05 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-03-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 5);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1996-11-20 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-11-20 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 6);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1999-06-10 15:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-06-10 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 7);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite)
VALUES (TO_TIMESTAMP('1995-02-05 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-02-05 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 8);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1993-06-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-06-10 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 15, 13);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1994-11-12 16:25:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-11-12 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), 16, 14);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1997-05-23 15:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-05-23 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 17, 15);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1994-12-01 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-01 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 18, 16);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1995-06-20 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-06-20 18:25:00', 'YYYY-MM-DD HH24:MI:SS'), 19, 17);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1994-08-22 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-08-22 17:55:00', 'YYYY-MM-DD HH24:MI:SS'), 20, 18);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1996-03-10 15:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-10 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 21, 19);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1994-12-02 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-02 18:25:00', 'YYYY-MM-DD HH24:MI:SS'), 22, 20);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1995-09-25 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-09-25 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 23, 21);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1996-03-15 16:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 24, 22);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1999-05-06 16:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-05-06 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 25, 23);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1995-04-12 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-04-12 18:55:00', 'YYYY-MM-DD HH24:MI:SS'), 26, 24);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1997-09-01 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-09-01 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 27, 25);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1997-02-10 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-02-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 28, 26);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1997-01-30 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-01-30 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 29, 27);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1995-12-01 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-12-01 18:25:00', 'YYYY-MM-DD HH24:MI:SS'), 30, 28);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1995-12-01 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-12-01 18:25:00', 'YYYY-MM-DD HH24:MI:SS'), 30, 29);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1997-01-30 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-01-30 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 29, 30);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1997-02-10 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-02-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 28, 30);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1997-09-01 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-09-01 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 27, 30);

INSERT INTO AssisterI (heureDepart, heureArrivee, nDefile, nInvite) 
VALUES (TO_TIMESTAMP('1995-04-12 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-04-12 18:55:00', 'YYYY-MM-DD HH24:MI:SS'), 26, 30);



-- INSERTION A LA TABLE AssisterC    
INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES ( TO_TIMESTAMP('2024-12-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-12-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),100, 100);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1987-07-15 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1987-07-15 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 2);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1990-09-10 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-09-10 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 31);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1990-03-22 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-03-22 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 2);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1993-01-10 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-01-10 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 2);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1992-01-30 16:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-01-30 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 3);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1994-03-05 16:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-03-05 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 4);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1996-11-20 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-11-20 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 5);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1999-06-10 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-06-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 6);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1995-02-05 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-02-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 7);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1992-08-01 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-08-01 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 11, 8);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1996-03-15 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 12, 9);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1999-04-12 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-04-12 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 13, 10);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1991-02-15 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1991-02-15 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 14, 12);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1993-06-10 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-06-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 15, 13);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1994-11-12 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-11-12 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 16, 14);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1997-05-23 16:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-05-23 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 17, 15);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1994-12-01 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-01 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 18, 16);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1995-06-20 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-06-20 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 19, 18);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1994-08-22 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-08-22 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 20, 16);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1996-03-10 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-10 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 21, 20);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1994-12-02 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-02 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 22, 22);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1995-09-25 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-09-25 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 23, 29);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1996-03-15 16:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 24, 9);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1999-05-06 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-05-06 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 25, 30);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1995-04-12 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-04-12 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 26, 32);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1997-09-01 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-09-01 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 27, 17);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1997-02-10 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-02-10 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 28, 2);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1997-01-30 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-01-30 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 29, 5);

INSERT INTO AssisterC (heureDepart, heureArrivee, nDefile, nCreateur) 
VALUES (TO_TIMESTAMP('1995-12-01 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-12-01 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 30, 3);


-- INSERTION A LA TABLE AssisterJ
INSERT INTO AssisterJ (heureDepart, heureArrivee, nDefile, nJournaliste) VALUES (TO_TIMESTAMP('2024-12-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-12-10 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 100, 100);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1987-07-15 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1987-07-15 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 2);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1990-09-10 17:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1990-09-10 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 3);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1990-03-22 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1990-03-22 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 4);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1993-01-10 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1993-01-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 5);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1992-01-30 16:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1992-01-30 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 6);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1994-03-05 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1994-03-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 7);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1996-11-20 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1996-11-20 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 8);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1999-06-10 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1999-06-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 9);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1995-02-05 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1995-02-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 10);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1992-08-01 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1992-08-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 11, 11);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1996-03-15 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1996-03-15 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 12, 12);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1999-04-12 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1999-04-12 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 13, 13);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1991-02-15 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1991-02-15 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 14, 14);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1993-06-10 15:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1993-06-10 17:40:00', 'YYYY-MM-DD HH24:MI:SS'), 15, 15);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1994-11-12 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1994-11-12 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 16, 16);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1997-05-23 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1997-05-23 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 17, 17);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1994-12-01 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1994-12-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 18, 18);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1995-06-20 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1995-06-20 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 19, 19);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1994-08-22 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1994-08-22 17:50:00', 'YYYY-MM-DD HH24:MI:SS'), 20, 20);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1996-03-10 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1996-03-10 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 21, 21);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1994-12-02 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1994-12-02 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 22, 22);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1995-09-25 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1995-09-25 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 23, 23);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1996-03-15 15:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1996-03-15 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 24, 24);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1999-05-06 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1999-05-06 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 25, 25);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1995-04-12 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1995-04-12 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), 26, 26);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1997-09-01 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1997-09-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 27, 27);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1997-02-10 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1997-02-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 28, 28);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1997-01-30 15:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1997-01-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 29, 29);

INSERT INTO AssisterJ (heureDepart, heureArrivee, nJournaliste, nDefile) VALUES (TO_DATE('1995-12-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1995-12-01 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), 30, 30);


-- INSERTION A LA TABLE Sponsoriser
INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile)  VALUES (TO_DATE('1987-07-15', 'YYYY-MM-DD'), 'Beaute', 32, 2);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1990-09-10', 'YYYY-MM-DD'), 'Mode', 1, 3);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1990-03-22', 'YYYY-MM-DD'), 'Beaute', 2, 4);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1993-01-10', 'YYYY-MM-DD'), 'Accessoires', 3, 5);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1992-01-30', 'YYYY-MM-DD'), 'Vetements', 4, 6);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1994-03-05', 'YYYY-MM-DD'), 'Cosmetiques', 5, 7);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1996-11-20', 'YYYY-MM-DD'), 'Accessoires', 6, 8);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1999-06-10', 'YYYY-MM-DD'), 'Mode', 7, 9);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1995-02-05', 'YYYY-MM-DD'), 'Beaute', 8, 10);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1992-08-01', 'YYYY-MM-DD'), 'Cosmetiques', 9, 11);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1996-03-15', 'YYYY-MM-DD'), 'Mode', 10, 12);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1999-04-12', 'YYYY-MM-DD'), 'Accessoires', 11, 13);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1991-02-15', 'YYYY-MM-DD'), 'Mode', 12, 14);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1993-06-10', 'YYYY-MM-DD'), 'Beaute', 13, 15);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1994-11-12', 'YYYY-MM-DD'), 'Vetements', 14, 16);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1997-05-23', 'YYYY-MM-DD'), 'Cosmetiques', 15, 17);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1994-12-01', 'YYYY-MM-DD'), 'Accessoires', 16, 18);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1995-06-20', 'YYYY-MM-DD'), 'Mode', 17, 19);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1994-08-22', 'YYYY-MM-DD'), 'Beaute', 18, 20);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1996-03-10', 'YYYY-MM-DD'), 'Accessoires', 19, 21);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1994-12-02', 'YYYY-MM-DD'), 'Mode', 20, 22);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1995-09-25', 'YYYY-MM-DD'), 'Beaute', 21, 23);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1996-03-15', 'YYYY-MM-DD'), 'Mode', 22, 24);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1999-05-06', 'YYYY-MM-DD'), 'Accessoires', 23, 25);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1995-04-12', 'YYYY-MM-DD'), 'Cosmetiques', 24, 26);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1997-09-01', 'YYYY-MM-DD'), 'Mode', 25, 27);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1997-02-10', 'YYYY-MM-DD'), 'Beaute', 26, 28);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1997-01-30', 'YYYY-MM-DD'), 'Accessoires', 27, 29);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1995-12-01', 'YYYY-MM-DD'), 'Mode', 28, 30);

INSERT INTO Sponsoriser (dateSponsor, typeSponsor, nSponsor, nDefile) VALUES (TO_DATE('1995-12-01', 'YYYY-MM-DD'), 'Mode', 28, 3);


-- INSERTION A LA TABLE InvterviewC

insert into InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (1, TO_TIMESTAMP('1985-06-15 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1985-06-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1);

insert into InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (2, TO_TIMESTAMP('1987-07-15 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1987-07-15 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 1);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (3, TO_TIMESTAMP('1990-09-10 19:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-09-10 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 1);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (4, TO_TIMESTAMP('1990-03-22 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-03-22 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 2);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (5, TO_TIMESTAMP('1993-01-10 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-01-10 19:05:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 2);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (6, TO_TIMESTAMP('1992-01-30 19:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-01-30 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 3);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (7, TO_TIMESTAMP('1994-03-05 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-03-05 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 4);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (8, TO_TIMESTAMP('1996-11-20 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-11-20 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 5);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (9, TO_TIMESTAMP('1999-06-10 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-06-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 6);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (10, TO_TIMESTAMP('1995-02-05 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-02-05 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 7);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (11, TO_TIMESTAMP('1992-08-01 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-08-01 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), 11, 8);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (12, TO_TIMESTAMP('1996-03-15 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 12, 9);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (13, TO_TIMESTAMP('1999-04-12 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-04-12 19:40:00', 'YYYY-MM-DD HH24:MI:SS'), 13, 10);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (14, TO_TIMESTAMP('1991-02-15 18:25:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1991-02-15 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), 14, 12);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (15, TO_TIMESTAMP('1993-06-10 17:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-06-10 18:35:00', 'YYYY-MM-DD HH24:MI:SS'), 15, 15);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (16, TO_TIMESTAMP('1994-11-12 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-11-12 19:35:00', 'YYYY-MM-DD HH24:MI:SS'), 16, 14);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (17, TO_TIMESTAMP('1997-05-23 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-05-23 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), 17, 15);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (19, TO_TIMESTAMP('1995-06-20 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-06-20 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 18, 17);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (20, TO_TIMESTAMP('1994-08-22 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-08-22 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), 19, 18);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (21, TO_TIMESTAMP('1996-03-10 18:25:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-10 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 20, 19);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (22, TO_TIMESTAMP('1994-12-02 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-02 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), 21, 20);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (23, TO_TIMESTAMP('1995-09-25 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-09-25 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), 22, 21);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (24, TO_TIMESTAMP('1996-03-15 18:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 19:25:00', 'YYYY-MM-DD HH24:MI:SS'), 23, 22);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (25, TO_TIMESTAMP('1999-05-06 18:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-05-06 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), 24, 23);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (26, TO_TIMESTAMP('1995-04-12 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-04-12 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 25, 24);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (27, TO_TIMESTAMP('1997-09-01 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-09-01 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), 26, 25);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (28, TO_TIMESTAMP('1997-02-10 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-02-10 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), 27, 28);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (29, TO_TIMESTAMP('1997-01-30 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-01-30 18:55:00', 'YYYY-MM-DD HH24:MI:SS'), 28, 29);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (33, TO_TIMESTAMP('1994-12-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-01 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 29, 16);

-- INSERTION A LA TABLE InvterviewI

-- Interview 1 dans InterviewI
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (1, TO_TIMESTAMP('1985-06-15 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1985-06-15 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 2);

-- Interview 2
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (2, TO_TIMESTAMP('1987-07-15 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1987-07-15 21:45:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 3);

-- Interview 3
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (3, TO_TIMESTAMP('1990-09-10 22:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-09-10 23:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 4);

-- Interview 4
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (4, TO_TIMESTAMP('1990-03-22 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-03-22 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 4);

-- Interview 5
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (5, TO_TIMESTAMP('1993-01-10 19:18:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-01-10 19:57:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 5);

-- Interview 6
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (6, TO_TIMESTAMP('1992-01-30 20:06:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-01-30 20:40:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 6);

-- Interview 7
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (7, TO_TIMESTAMP('1994-03-05 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-03-05 20:19:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 7);

-- Interview 8
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (8, TO_TIMESTAMP('1996-11-20 19:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-11-20 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 8);

-- Interview 9
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (9, TO_TIMESTAMP('1999-06-10 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-06-10 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 9);

-- Interview 10
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (10, TO_TIMESTAMP('1995-02-05 19:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-02-05 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 10);

-- Interview 11
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (11, TO_TIMESTAMP('1992-08-01 18:57:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-08-01 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 11, 11);

-- Interview 12
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (12, TO_TIMESTAMP('1996-03-15 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 19:50:00', 'YYYY-MM-DD HH24:MI:SS'), 12, 12);

-- Interview 13
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (13, TO_TIMESTAMP('1999-04-12 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-04-12 20:25:00', 'YYYY-MM-DD HH24:MI:SS'), 13, 13);

-- Interview 14
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (14, TO_TIMESTAMP('1991-02-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1991-02-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 14, 14);

-- Interview 15
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (15, TO_TIMESTAMP('1993-06-10 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-06-10 19:25:00', 'YYYY-MM-DD HH24:MI:SS'), 15, 15);

-- Interview 16
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (16, TO_TIMESTAMP('1994-11-12 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-11-12 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 16, 16);

-- Interview 17
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (17, TO_TIMESTAMP('1997-05-23 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-05-23 19:50:00', 'YYYY-MM-DD HH24:MI:SS'), 17, 17);

-- Interview 18
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (18, TO_TIMESTAMP('1995-06-20 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-06-20 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 18, 19);

-- Interview 19
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (19, TO_TIMESTAMP('1994-08-22 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-08-22 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 19, 20);


INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (20, TO_TIMESTAMP('1996-03-10 19:27:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-10 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 20, 21);

-- Interview 21
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (21, TO_TIMESTAMP('1994-12-02 19:29:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-02 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 21, 22);

-- Interview 23
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (23, TO_TIMESTAMP('1999-05-06 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-05-06 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 24, 24);

-- Interview 24
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (24, TO_TIMESTAMP('1995-04-12 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-04-12 20:39:00', 'YYYY-MM-DD HH24:MI:SS'), 25, 25);

-- Interview 27
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (27, TO_TIMESTAMP('1996-03-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 23, 28);


-- Interview 28
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (28, TO_TIMESTAMP('1997-09-01 19:25:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-09-01 20:05:00', 'YYYY-MM-DD HH24:MI:SS'), 26, 29);

-- Interview 29
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (29, TO_TIMESTAMP('1997-01-30 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-01-30 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 28, 29);

-- Interview 33
INSERT INTO InterviewI (nInterview, heureDebut, heureFin, nJournaliste, nInvite)
VALUES (33, TO_TIMESTAMP('1994-12-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-01 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 29, 18);


-- INSERTION A LA TABLE InvterviewM
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (1, TO_TIMESTAMP('1985-06-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1985-06-15 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 2);

-- Interview 2
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (2, TO_TIMESTAMP('1987-07-15 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1987-07-15 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 3);

-- Interview 3
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (3, TO_TIMESTAMP('1990-09-10 21:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-09-10 22:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 4);

-- Interview 4
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (4, TO_TIMESTAMP('1990-03-22 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-03-22 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 4);

-- Interview 5
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (5, TO_TIMESTAMP('1993-01-10 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-01-10 19:50:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 5);

-- Interview 6
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (6, TO_TIMESTAMP('1992-01-30 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-01-30 20:40:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 6);

-- Interview 7
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (7, TO_TIMESTAMP('1994-03-05 19:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-03-05 20:10:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 7);

-- Interview 8
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (8, TO_TIMESTAMP('1996-11-20 19:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-11-20 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 8);

-- Interview 9
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (9, TO_TIMESTAMP('1999-06-10 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-06-10 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 9);

-- Interview 10
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (10, TO_TIMESTAMP('1995-02-05 19:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-02-05 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 10);

-- Interview 11
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (11, TO_TIMESTAMP('1992-08-01 18:57:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-08-01 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 11, 11);

-- Interview 12
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (12, TO_TIMESTAMP('1996-03-15 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 19:50:00', 'YYYY-MM-DD HH24:MI:SS'), 12, 12);

-- Interview 13
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (13, TO_TIMESTAMP('1999-04-12 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-04-12 20:25:00', 'YYYY-MM-DD HH24:MI:SS'), 13, 13);

-- Interview 14
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (14, TO_TIMESTAMP('1991-02-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1991-02-15 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 14, 14);

-- Interview 15
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (15, TO_TIMESTAMP('1993-06-10 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-06-10 19:25:00', 'YYYY-MM-DD HH24:MI:SS'), 15, 15);

-- Interview 16
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (16, TO_TIMESTAMP('1994-11-12 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-11-12 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 16, 16);

-- Interview 17
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (17, TO_TIMESTAMP('1997-05-23 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-05-23 19:50:00', 'YYYY-MM-DD HH24:MI:SS'), 17, 17);

-- Interview 18
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (18, TO_TIMESTAMP('1995-06-20 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-06-20 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 18, 19);

-- Interview 19
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (19, TO_TIMESTAMP('1994-08-22 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-08-22 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 19, 20);

-- Interview 20
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (20, TO_TIMESTAMP('1996-03-10 19:27:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-10 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 20, 21);

-- Interview 21
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (21, TO_TIMESTAMP('1994-12-02 19:29:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-02 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 21, 22);

-- Interview 22
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (22, TO_TIMESTAMP('1998-01-19 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1998-01-19 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 21, 23);

-- Interview 23
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (23, TO_TIMESTAMP('1999-05-06 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-05-06 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 24, 24);

-- Interview 24
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (24, TO_TIMESTAMP('1995-04-12 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-04-12 20:39:00', 'YYYY-MM-DD HH24:MI:SS'), 25, 25);


-- Interview 27
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (27, TO_TIMESTAMP('1996-03-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 23, 28);

-- Interview 28
INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (28, TO_TIMESTAMP('1997-09-01 19:25:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-09-01 20:05:00', 'YYYY-MM-DD HH24:MI:SS'), 26, 29);


INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (29, TO_TIMESTAMP('1997-01-30 19:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1997-01-30 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 28, 29);

INSERT INTO InterviewM (nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
VALUES (33, TO_TIMESTAMP('1994-12-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-12-01 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 29, 18);


-- INSERTION A LA TABLE tenue

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (1, 178.00, 250.00, 'Robe Printanière', 'Une robe légère pour les journées ensoleillées.', 'Robe', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (2, 179.00, 300.00, 'Costume Intemporel', 'Costume élégant pour toutes les occasions.', 'Costume', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (3, 175.00, 150.00, 'T-shirt Urbain', 'T-shirt moderne et confortable.', 'T-shirt', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (4, 178.00, 450.00, 'Robe Astrale', 'Inspirée des constellations.', 'Robe', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (5, 180.00, 500.00, 'Manteau Vintage', 'Manteau classique avec une touche moderne.', 'Manteau', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (6, 177.00, 200.00, 'Chemise Vivante', 'Chemise avec motifs artistiques.', 'Chemise', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (7, 178.00, 600.00, 'Veste Luxe', 'Veste scintillante pour soirées glamour.', 'Veste', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (8, 178.00, 120.00, 'Short Éternel', 'Short pratique et esthétique.', 'Short', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (9, 175.00, 350.00, 'Robe de Ciel', 'Robe fluide avec des tons naturels.', 'Robe', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (10, 175.00, 800.00, 'Robe Ébène', 'Robe en soie avec détails sophistiqués.', 'Robe', 1, 1);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (11, 180.00, 700.00, 'Blouson Urbain', 'Blouson pratique pour la vie citadine.', 'Blouson', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (12, 179.00, 450.00, 'Robe Lunaire', 'Robe mystique pour soirées spéciales.', 'Robe', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (13, 175.00, 550.00, 'Tenue d’Époque', 'Ensemble inspiré des années 80.', 'Ensemble', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (14, 177.00, 300.00, 'Jupe Pinceau', 'Jupe artistique et moderne.', 'Jupe', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (15, 176.00, 900.00, 'Costume Doré', 'Costume luxueux avec broderies dorées.', 'Costume', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (16, 178.00, 400.00, 'Robe Automnale', 'Robe élégante dans des tons chauds.', 'Robe', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (17, 175.00, 650.00, 'Manteau Émeraude', 'Manteau chic avec des détails verts.', 'Manteau', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (18, 183.00, 500.00, 'Veste Nocturne', 'Veste pour soirées formelles.', 'Veste', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (19, 185.00, 850.00, 'Cape Magique', 'Cape inspirée des contes de fées.', 'Cape', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (20, 180.00, 300.00, 'Robe Renaissance', 'Robe élégante avec des touches modernes.', 'Robe', 2, 2);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (21, 183.00, 320.00, 'Robe Chromatique', 'Robe vive avec des couleurs audacieuses.', 'Robe', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (22, 182.00, 700.00, 'Veste Satinée', 'Veste élégante en satin.', 'Veste', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (23, 184.00, 220.00, 'Jupe Été', 'Jupe légère et confortable.', 'Jupe', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (24, 181.00, 180.00, 'Pantalon Lumière', 'Pantalon clair et fluide.', 'Pantalon', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (25, 182.00, 350.00, 'Manteau Velours', 'Manteau en velours raffiné.', 'Manteau', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (26, 180.00, 300.00, 'Robe Futuriste', 'Robe métallique pour un look moderne.', 'Robe', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (27, 177.00, 280.00, 'Robe Étoilée', 'Robe élégante avec des motifs d’étoiles.', 'Robe', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (28, 181.00, 400.00, 'Pantalon Patrimoine', 'Pantalon revisité avec style.', 'Pantalon', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (29, 179.00, 200.00, 'Robe Sculpturale', 'Robe audacieuse inspirée de l’art.', 'Robe', 3, 3);

INSERT INTO Tenue (nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur) 
VALUES (30, 182.00, 950.00, 'Robe Rubis', 'Robe luxueuse aux tons rouges profonds.', 'Robe', 3, 3);



-- INSERTION A LA TABLE participer 
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (1, 17, 1);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (2, 17, 2);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (3, 17, 3);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (4, 17, 4);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (5, 17, 5);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (6, 17, 6);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (7, 17, 7);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (8, 17, 8);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (9, 17, 9);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (10, 17, 10);

INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (11, 1, 11);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (12, 1, 12);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (13, 1, 13);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (14, 1, 14);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (15, 1, 15);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (16, 1, 16);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (17, 1, 17);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (18, 1, 18);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (19, 1, 19);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (20, 1, 20);

INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (21, 5, 21);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (22, 5, 22);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (23, 5, 23);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (24, 5, 24);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (25, 5, 25);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (26, 5, 26);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (27, 5, 27);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (28, 5, 28);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (29, 5, 29);
INSERT INTO Participer (nMannequin, nDefile, nTenue) VALUES (30, 5, 30);
















