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
VALUES (100, 'Reflets Cristallins', 'Elegance Givree', 'Hiver', 10, 100, 'Off-White');


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


-- INSERTION A LA TABLE InvterviewC
insert into InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (2, TO_TIMESTAMP('1987-07-15 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1987-07-15 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 2);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (3, TO_TIMESTAMP('1990-09-10 19:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-09-10 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 3);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (4, TO_TIMESTAMP('1990-03-22 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1990-03-22 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 4);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (5, TO_TIMESTAMP('1993-01-10 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-01-10 19:05:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 5);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (6, TO_TIMESTAMP('1992-01-30 19:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-01-30 19:55:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 6);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (7, TO_TIMESTAMP('1994-03-05 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-03-05 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 7);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (8, TO_TIMESTAMP('1996-11-20 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-11-20 19:15:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 8);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (9, TO_TIMESTAMP('1999-06-10 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-06-10 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 9);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (10, TO_TIMESTAMP('1995-02-05 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1995-02-05 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 10);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (11, TO_TIMESTAMP('1992-08-01 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1992-08-01 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 11);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (12, TO_TIMESTAMP('1996-03-15 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1996-03-15 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 12);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (13, TO_TIMESTAMP('1999-04-12 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1999-04-12 19:40:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 13);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (14, TO_TIMESTAMP('1991-02-15 18:25:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1991-02-15 19:20:00', 'YYYY-MM-DD HH24:MI:SS'), 11, 14);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (15, TO_TIMESTAMP('1993-06-10 17:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1993-06-10 18:35:00', 'YYYY-MM-DD HH24:MI:SS'), 12, 15);

INSERT INTO InterviewC (nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
VALUES (16, TO_TIMESTAMP('1994-11-12 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('1994-11-12 19:35:00', 'YYYY-MM-DD HH24:MI:SS'), 13, 16);


-- INSERTION A LA TABLE InvterviewI

-- INSERTION A LA TABLE InvterviewM

-- INSERTION A LA TABLE participer 
