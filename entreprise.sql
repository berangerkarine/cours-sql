+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| id_employes   | int(3)        | NO   | PRI | NULL    | auto_increment |
| prenom        | varchar(20)   | YES  |     | NULL    |                |
| nom           | varchar(20)   | YES  |     | NULL    |                |
| sexe          | enum('m','f') | NO   |     | NULL    |                |
| service       | varchar(30)   | YES  |     | NULL    |                |
| date_embauche | date          | YES  |     | NULL    |                |
| salaire       | float         | YES  |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+
