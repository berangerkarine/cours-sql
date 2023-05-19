



CREATE TABLE employes (
  id_employes int(3) NOT NULL AUTO_INCREMENT,
  prenom varchar(20) DEFAULT NULL,
  nom varchar(20) DEFAULT NULL,
  sexe enum('m','f') NOT NULL,
  service varchar(30) DEFAULT NULL,
  date_embauche date DEFAULT NULL,
  salaire float DEFAULT NULL,
  PRIMARY KEY (id_employes)
) ENGINE=InnoDB ;

INSERT INTO employes (id_employes, prenom, nom, sexe, service, date_embauche, salaire) VALUES
(350, 'Jean-pierre', 'Laborde', 'm', 'direction', '1999-12-09', 5000),
(388, 'Clement', 'Gallet', 'm', 'commercial', '2000-01-15', 2300),
(415, 'Thomas', 'Winter', 'm', 'commercial', '2000-05-03', 3550),
(417, 'Chloe', 'Dubar', 'f', 'production', '2001-09-05', 1900),
(491, 'Elodie', 'Fellier', 'f', 'secretariat', '2002-02-22', 1600),
(509, 'Fabrice', 'Grand', 'm', 'comptabilite', '2003-02-20', 1900),
(547, 'Melanie', 'Collier', 'f', 'commercial', '2004-09-08', 3100),
(592, 'Laura', 'Blanchet', 'f', 'direction', '2005-06-09', 4500),
(627, 'Guillaume', 'Miller', 'm', 'commercial', '2006-07-02', 1900),
(655, 'Celine', 'Perrin', 'f', 'commercial', '2006-09-10', 2700),
(699, 'Julien', 'Cottet', 'm', 'secretariat', '2007-01-18', 1390),
(701, 'Mathieu', 'Vignal', 'm', 'informatique', '2008-12-03', 2000),
(739, 'Thierry', 'Desprez', 'm', 'secretariat', '2009-11-17', 1500),
(780, 'Amandine', 'Thoyer', 'f', 'communication', '2010-01-23', 1500),
(802, 'Damien', 'Durand', 'm', 'informatique', '2010-07-05', 2250),
(854, 'Daniel', 'Chevel', 'm', 'informatique', '2011-09-28', 1700),
(876, 'Nathalie', 'Martin', 'f', 'juridique', '2012-01-12', 3200),
(900, 'Benoit', 'Lagarde', 'm', 'production', '2013-01-03', 2550),
(933, 'Emilie', 'Sennard', 'f', 'commercial', '2014-09-11', 1800),
(990, 'Stephanie', 'Lafaye', 'f', 'assistant', '2015-06-02', 1775);

******************************************************************
SELECT LE Read de notre CRUD
******************************************************************
SELECT * FROM employes;
SELECT NOM, PRENOM FROM employes;
SELECT DISTINCT service FROM employes;
--> clause WHERE-->
SELECT * FROM employes WHERE service='informatique';
--> comparer LIKE PRENOM COMMENCE PAR S-->
SELECT * FROM employes WHERE prenom LIKE 's%';
--> comparer Like renom finissant par e alors '%e'
--> comparer like prenom composer alors '%-%'
or ou and possible
SELECT * FROM employes WHERE date_embauche BETWEEN '2000-01-01' AND '2000-12-31';
-->operateur de comparaison-->
SELECT * FROM employes WHERE service != 'informatique'; 
SELECT * FROM employes ORDER BY salaire ASC; -->SINON DESC pour descendant-->

--> ATTENTION A L ORDRE-->
SELECT.....FROM......WHERE..... BETWEEN......ORDER BY....... LIMIT......
--> ALIAS AS nommes nouvelles colonne en meme temps
SELECT salaire*12 AS salaire_annuel FROM employes;

--> function d'agregat nomFunction()
--SUM()
SELECT SUM(salaire*12) AS TOTAL_SALAIRE FROM EMPLOYES;
-- MIN() OU MAX()
SELECT MIN(salaire) AS TOTAL_SALAIRE FROM EMPLOYES;