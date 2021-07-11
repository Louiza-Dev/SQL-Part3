-- Exo1
-- Créer la base codex, créer une table clients avec les colonnes id, lastName, firstName,birthDate, adress, phoneNumber et mail.
CREATE DATABASE `codex`;
USE codex;
CREATE TABLE `clients`
(`id` INT PRIMARY KEY NOT NULL,
  lastName VARCHAR(100),
  firstName VARCHAR(100),
  birthDate DATE,
  adress VARCHAR(255),
  phoneNumber INT,
  mail VARCHAR(255)
);
-- Exo2
-- Dans la base de donnée 'webDevelopment',ajouter à la table languages ​​une colonne versions (VARCHAR).
USE webDeveloppement;
ALTER TABLE langage ADD versions VARCHAR(255);
-- Exo3
-- Ajouter à la table frameworks une colonne version (INT)
USE webDeveloppement;
ALTER TABLE frameworks ADD version INT;
-- Exo4
-- Dans la table languages ​​renommer la colonne versions en version.
ALTER TABLE langage CHANGE versions version VARCHAR(255);
-- Exo5
-- Dans la table frameworks, renommer la colonne name en framework.
ALTER TABLE frameworks CHANGE name framework VARCHAR(55);
-- Exo6
-- Ajouter à la table frameworks changer le type de la colonne version en VARCHAR de taille 10
ALTER TABLE frameworks CHANGE version version VARCHAR(10);
-- ## Bonus
--Dans la base codex, dans la table clients et en une seule requête :
--supprimer la colonne phoneNumber -renommer la colonne mail par mails --ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
USE codex;
ALTER TABLE clients DROP phoneNumber, CHANGE mail mails VARCHAR(55), ADD zipCode VARCHAR(55),ADD city VARCHAR(55);
