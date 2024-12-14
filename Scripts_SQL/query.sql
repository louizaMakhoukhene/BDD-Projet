---------------------------------

-- Requetes 

---------------------------------

--Requêtes sur les Créateurs
--1. Donner le nom de tous les créateurs participant à la Fashion Week se déroulant du jj/mm/aaaa à XX par exemple : du 22-déc-2024 à Londres.
select c.nom,  c.prenom 
from participer p, tenue t, createur c, defile d
where p.nTenue = t.nTenue 
and c.nCreateur = t.nCreateur
and d.nDefile = p.nDefile
and d.dateDefile =  TO_DATE('1990-03-22', 'YYYY-MM-DD')
and d.lieu = 'Paris';

--2.	Lister toutes les collections d'un créateur avec le nombre de tenues par collection.
select c.nom , c.prenom, co.nomCollection, co.nbrTenues
from collection co, createur c
where co.ncreateur = c.ncreateur;


--3.	La moyenne des prix des tenues par Créateur.
select c.nom, c.prenom, avg(t.prix)
from tenue t , createur c
where t.ncreateur = c.ncreateur
group by  c.nom, c.prenom;


--4.	Le créateur avec le plus de tenues crées.
SELECT *
FROM (
    SELECT c.nom, c.prenom, SUM(co.nbrTenues) AS total_tenues
    FROM collection co, createur c
    where co.ncreateur = c.nCreateur
    GROUP BY c.nom, c.prenom
    ORDER BY total_tenues DESC
)
where rownum = 1;

--Requêtes sur les  collections
--1. les collections présentées lors de la saison ‘automne-hiver 2024’
select co.nomCollection
from participant p, collection co, tenue t, defile d
where p.nTenue = t.nTenue
and t.nomCollection = co.nCollection
and p.nDefile = d.nDefile
and co.saison = 'Automne/Hiver'
and TO_CHAR(d.dateDefile, 'YYYY') = '1985';


--2.les collections créées par le créateur par exemple "Renaud Dorian" pour la maison de mode "Chanel" 
select co.ncollection, co.nomCollection 
from collection co, createur c, MaisonMode mm
where co.ncreateur = c.ncreateur
and c.nomMaisonMode = mm.nomMaisonMode
and c.nom = 'Renaud'
and c.prenom = 'Dorian'
and mm.nomMaisonMode = 'Chanel';