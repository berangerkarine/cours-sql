SELECT l.titre, e.date_sortie, a.prenom
FROM abonne a 
RIGHT JOIN emprunt e 
ON a.id_abonne=e.id_abonne
RIGHT JOIN livre l 
ON l.id_livre=e.id_livre;

 



