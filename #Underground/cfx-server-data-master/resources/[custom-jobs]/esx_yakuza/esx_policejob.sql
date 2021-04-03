INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_yakuza', 'YakuZa', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_yakuza', 'YakuZa', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_yakuza', 'YakuZa', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('yakuza', 'YakuZa')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('yakuza',0,'recruit','Chiko',20,'{}','{}'),
	('yakuza',1,'officer','Memba',40,'{}','{}'),
	('yakuza',2,'sergeant','Ausbilder',60,'{}','{}'),
	('yakuza',3,'lieutenant','Familien-Rat',85,'{}','{}'),
	('yakuza',4,'boss','Oyabun',100,'{}','{}')
;
