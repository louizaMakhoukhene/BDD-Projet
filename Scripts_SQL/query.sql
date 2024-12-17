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
--1. les collections présentées lors de la saison ‘automne-hiver 1985’
select co.nomCollection
from participer p, collection co, tenue t, defile d
where p.nTenue = t.nTenue
and t.nCollection = co.nCollection
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

--Requêtes sur les defiles
--1.	Pour chaque défilé, combien d’invités ont été présents
select a.nDefile, count(nInvite) as nombre_invites
from AssisterI a 
group by a.nDefile;

--2.	Quel est le nombre total de défilés organisés par la maison de mode "X" cette année ?
select count(d.nDefile) as nombre_total_defiles
from defile d
where TO_CHAR(d.dateDefile, 'YYYY') = TO_CHAR(SYSDATE, 'YYYY')
and d.nomMaisonMode = 'Chanel';


--Requêtes sur les tenues
--1.	Quelle est la moyenne des prix des tenues de collection ‘Echos Sauvages’ qui ont été présentées par la maison de mode "Lacoste" cette année ?
select avg(t.prix) as moyenne_prix
from collection co, participer p, tenue t, defile d
where  t.nTenue = p.nTenue 
and d.nDefile = p.ndefile
and co.ncollection = t.ncollection
and co.nomCollection = 'Echos Sauvages'
and co.nomMaisonMode = 'Lacoste'
and TO_CHAR(d.dateDefile, 'YYYY') = TO_CHAR(SYSDATE, 'YYYY');

--2.	tenues qui coûtent plus cher que la moyenne des prix de leur collection 
SELECT t.nTenue, t.nomTenue, t.prix, c.nomCollection
FROM Tenue t
JOIN Collection c ON t.nCollection = c.nCollection
WHERE t.prix > (
    SELECT AVG(t2.prix)
    FROM Tenue t2
    WHERE t2.nCollection = t.nCollection
);

--3.	Quelle est la tenue la moins chère et la plus chère de chaque maison de mode ?
SELECT co.nomMaisonMode, 
    MIN(t.prix) AS tenue_moins_chere, 
    MAX(t.prix) AS tenue_plus_chere
FROM Tenue t, collection co
where t.nCollection = co.nCollection
GROUP BY co.nomMaisonMode;


--Requêtes sur les mannequins
--1.	Quels mannequins ont participé à plus de trois défilés lors de la saison ‘Printemps/Ete’ 2024 ?
select m.nom, m.prenom, count(p.ndefile) as nombre_defiles
from participer p, mannequin m, collection co, defile d, tenue t
where p.nMannequin = m.nMannequin
and p.ntenue = t.ntenue
and t.ncollection = co.ncollection
and p.ndefile = d.ndefile
and co.saison = 'Printemps/Ete'
and TO_CHAR(d.dateDefile, 'YYYY') = '2024'
group by m.nom, m.prenom
having count(p.ndefile) > 3;


--2.	Quels mannequins ont porté des tenues de la collection "X" lors du défilé "yyyy-mm-dd" ?
select m.nom, m.prenom
from mannequin m, participer p, tenue t, collection co, defile d
where p.nMannequin = m.nMannequin
and p.ntenue = t.nTenue
and t.ncollection = co.ncollection
and p.ndefile = d.ndefile
and co.nomCollection = 'Echos Sauvages'
and d.dateDefile = TO_DATE('1997-05-23', 'YYYY-MM-DD');

--3.    le nom et le prénom des mannequins ont défilé aux deux Fashion Week de Paris 2021.
select m.nom, m.prenom
from participer p, mannequin m, defile d 
where p.nMannequin = m.nMannequin
and p.ndefile = d.ndefile
and d.lieu = 'Paris'
and TO_CHAR(d.dateDefile, 'YYYY') = '2021'
group by m.nom, m.prenom
having count(distinct p.ndefile) = 2;


-- 4.	Trouver les mannequins qui n’ont participé à aucun défilé cette année.
select m.nom, m.prenom
from mannequin m
where not exists( select *
                    from participer p, defile d
                    where p.ndefile = d.ndefile
                    and TO_CHAR(d.dateDefile, 'YYYY') = TO_CHAR(SYSDATE, 'YYYY'));


--Requêtes sur les maisons de mode
--1.	les maisons de mode ont organisé un défilé pour chaque saison cette année
select d.nomMaisonMode
from Defile d, collection c
where d.nomMaisonMode = c.nomMaisonMode
and TO_CHAR(d.dateDefile, 'YYYY') = '2024'
group by d.nomMaisonMode
having COUNT(DISTINCT c.saison) = (SELECT COUNT(DISTINCT saison) FROM Collection);


--2.	Quelles maisons de mode ont organisé le plus grand nombre de défilés cette année ?
select d.nomMaisonMode, count(d.ndefile) as nombre_defiles
from defile d
group by d.nomMaisonMode 
order by nombre_defiles desc;

--Requêtes sur les invites
--1.	Quels sont les invités ayant assisté à plus de cinq défilés cette saison ?
SELECT i.nom, i.prenom
FROM invite i, assisteri a, defile d, collection c
where i.nInvite = a.nInvite
and a.nDefile = d.nDefile
and d.nomMaisonMode = c.nomMaisonMode
and TO_CHAR(d.dateDefile, 'YYYY') = TO_CHAR(SYSDATE, 'YYYY')
AND c.saison = 'Automne/Hiver' 
GROUP BY i.nom, i.prenom
HAVING COUNT(a.nDefile) > 2;


