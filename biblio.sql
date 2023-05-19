


-- 1e ligne : ce que je souhaite afficher
-- 2e ligne : la 1ère table d'où proviennent les informations
-- 3e ligne : la seconde table d'où proviennent les informations
-- 4e ligne : la jointure qui lie les deux champs en commun dans les 2 tables
-- 5e ligne : la condition complémentaire éventuelle ici sur le prénom

-- *********************
-- Exercices
-- *********************
-- 1. Afficher le titre, date de sortie et date de rendu des livres écrits par Alphonse Daudet.
SELECT a.prenom , l.*
FROM abonne a
INNER JOIN emprunt e
ON a.id_abonne=e.id_abonne
INNER JOIN livre l
ON e.id_livre=l.id_livre
WHERE a.prenom='guillaume';

-- 2. Afficher qui (prénom) a emprunté "Une vie" sur 2011.




-- 3. Afficher le nombre de livres empruntés par chaque abonné (prénom).


-- 4. Afficher qui (prénom) a emprunté quels livres (titre) et à quelles dates (date de sortie).
SELECT l.titre, e.date_sortie, a.prenom
FROM abonne a 
INNER JOIN emprunt e 
ON a.id_abonne=e.id_abonne
INNER JOIN livre l 
ON l.id_livre=e.id_livre;

--5. Afficher tous les prenoms et infos livre emprunte meme les prenoms des abonnes qui n ont jaais emprunte de livre 
SELECT l.titre, e.date_sortie, a.prenom
FROM abonne a 
LEFT JOIN emprunt e 
ON a.id_abonne=e.id_abonne
LEFT JOIN livre l 
ON l.id_livre=e.id_livre;


-- *******
-- Voici un exemple avec un livre supprimé de la bibliothèque (Une vie) :
DELETE FROM livre WHERE id_livre = 100;

-- Exercice :
-- 1° Afficher la liste des emprunts (id_emprunt) avec le titre des livres qui existent encore.

    

-- 2° Afficher la liste de TOUS les emprunts avec le titre des livres, y compris les emprunts pour lesquels il n'y a plus de livre en bibliothèque.


SELECT l.titre, e.date_sortie, e.date_rendu
FROM livre l 
INNER JOIN emprunt e 
ON l.id_livre=e.id_livre

WHERE l.auteur ='Alphonse Daudet';

 
