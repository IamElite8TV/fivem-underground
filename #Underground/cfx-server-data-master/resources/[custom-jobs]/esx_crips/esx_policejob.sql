INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_crips', 'Crips', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_crips', 'Crips', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_crips', 'Crips', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('crips', 'Crips')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('crips',0,'recruit','Member',20,'{}','{}'),
	('crips',1,'officer','Gangster',40,'{}','{}'),
	('crips',2,'sergeant','Big G',60,'{}','{}'),
	('crips',3,'lieutenant','OG',85,'{}','{}'),
	('crips',4,'boss','BIG O.G.',100,'{}','{}')
;
