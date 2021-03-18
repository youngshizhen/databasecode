-- shrink mega table into medium table

drop table if exists medium_table;

CREATE TABLE medium_table AS
SELECT _STATE, AGE, MARITAL, EDUCA, EMPLOY, WEIGHT2, GENHLTH, PHYSHLTH, MENTHLTH, HLTHPLN1, MEDCOST, CHECKUP1, HIVTST6, DIABAGE2,BPMEDS, TOLDHI2, ASTHMA3, CHCSCNCR, CHCOCNCR, HAVARTH3, ADDEPEV2, CHCKIDNY, CHCVISON, DIABETE3,SMOKDAY2, ALCDAY5, MAXDRNKS,FRUITJU1, FRUIT1, FVBEANS, FVGREEN, FVORANG, EXERANY2, EXRACT01, EXEROFT1, QLACTLM2, USEEQUIP, LMTJOIN3,_IMPAGE, _RFHLTH, _HCVU651, _RFHYPE5, _DRDXAR1, _SMOKER3, WTKG3, _RFBMI5, _EDUCAG, FTJUDA1_, FRUTDA1_, BEANDAY_, GRENDAY_, ORNGDAY_, VEGEDA1_, _TOTINDA, _FLSHOT5, DROCDY3_, _RFBING5, _DRNKDY4, _RFDRHV4, _RFDRMN4, _AIDTST3
FROM mega;

-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
DROP TABLE IF EXISTS Chronic;
CREATE TABLE Chronic(
	BPMEDS 	DECIMAL(12,1),
	TOLDHI2 DECIMAL(12,1),
	ASTHMA3 DECIMAL(12,1),
	CHCSCNCR DECIMAL(12,1),
	CHCOCNCR DECIMAL(12,1),
	HAVARTH3 DECIMAL(12,1),
	ADDEPEV2 DECIMAL(12,1),
	CHCKIDNY DECIMAL(12,1),
	CHCVISON DECIMAL(12,1),
	DIABETE3 DECIMAL(12,1)
);

INSERT INTO Chronic (BPMEDS,TOLDHI2,ASTHMA3,CHCSCNCR,CHCOCNCR,HAVARTH3,ADDEPEV2,CHCKIDNY,CHCVISON,DIABETE3)
SELECT DISTINCT BPMEDS,TOLDHI2,ASTHMA3,CHCSCNCR,CHCOCNCR,HAVARTH3,ADDEPEV2,CHCKIDNY,CHCVISON,DIABETE3
FROM medium_table;


ALTER TABLE Chronic
ADD COLUMN chronic_id INT PRIMARY KEY AUTO_INCREMENT FIRST ;
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
DROP TABLE IF EXISTS Smok_drinking;
CREATE TABLE Smok_drinking(
	SMOKDAY2 DECIMAL(12,1),
    ALCDAY5 DECIMAL(12,1),
    MAXDRNKS DECIMAL(12,1)
);

INSERT INTO Smok_drinking (SMOKDAY2, ALCDAY5, MAXDRNKS)
SELECT DISTINCT SMOKDAY2, ALCDAY5, MAXDRNKS
FROM medium_table;


ALTER TABLE Smok_drinking
ADD COLUMN Smodrink_id  INT PRIMARY KEY AUTO_INCREMENT FIRST ;


-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
DROP TABLE IF EXISTS Fresh;
CREATE TABLE Fresh(
	FRUITJU1 DECIMAL(12,1),
    FRUIT1 DECIMAL(12,1),
    FVBEANS DECIMAL(12,1),
    FVGREEN DECIMAL(12,1),
    FVORANG DECIMAL(12,1)
);

INSERT INTO Fresh (FRUITJU1, FRUIT1, FVBEANS, FVGREEN, FVORANG)
SELECT DISTINCT FRUITJU1, FRUIT1, FVBEANS, FVGREEN, FVORANG
FROM medium_table;


ALTER TABLE Fresh
ADD COLUMN fresh_id INT PRIMARY KEY AUTO_INCREMENT FIRST ;

-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------

DROP TABLE IF EXISTS Exercise;
CREATE TABLE Exercise(
	EXERANY2 DECIMAL(12,1),
    EXRACT01 DECIMAL(12,1),
    EXEROFT1 DECIMAL(12,1),
    QLACTLM2 DECIMAL(12,1),
    USEEQUIP DECIMAL(12,1),
    LMTJOIN3 DECIMAL(12,1)
);

INSERT INTO Exercise (EXERANY2, EXRACT01, EXEROFT1, QLACTLM2, USEEQUIP, LMTJOIN3)
SELECT DISTINCT EXERANY2, EXRACT01, EXEROFT1, QLACTLM2, USEEQUIP, LMTJOIN3
FROM medium_table;


ALTER TABLE Exercise
ADD COLUMN exc_id INT PRIMARY KEY AUTO_INCREMENT FIRST ;


-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------

DROP TABLE IF EXISTS Testing;
CREATE TABLE Testing(
 _IMPAGE DECIMAL(12,1),
 _RFHLTH DECIMAL(12,1),
 _HCVU651 DECIMAL(12,1),
 _RFHYPE5 DECIMAL(12,1),
 _DRDXAR1 DECIMAL(12,1),
 _SMOKER3 DECIMAL(12,1),
 WTKG3 DECIMAL(12,1),
 _RFBMI5 DECIMAL(12,1),
 _EDUCAG DECIMAL(12,1),
 FTJUDA1_ DECIMAL(12,1),
 FRUTDA1_ DECIMAL(12,1),
 BEANDAY_ DECIMAL(12,1),
 GRENDAY_ DECIMAL(12,1),
 ORNGDAY_ DECIMAL(12,1),
 VEGEDA1_ DECIMAL(12,1),
 _TOTINDA DECIMAL(12,1),
 _FLSHOT5 DECIMAL(12,1),
 DROCDY3_ DECIMAL(12,1),
 _RFBING5 DECIMAL(12,1),
 _DRNKDY4 DECIMAL(12,1),
 _RFDRHV4 DECIMAL(12,1),
 _RFDRMN4 DECIMAL(12,1),
 _AIDTST3 DECIMAL(12,1));


INSERT INTO Testing (_IMPAGE, _RFHLTH, _HCVU651, _RFHYPE5, _DRDXAR1, _SMOKER3, WTKG3, _RFBMI5, _EDUCAG, FTJUDA1_, FRUTDA1_, BEANDAY_, GRENDAY_, ORNGDAY_, VEGEDA1_, _TOTINDA, _FLSHOT5, DROCDY3_, _RFBING5, _DRNKDY4, _RFDRHV4, _RFDRMN4, _AIDTST3)
SELECT DISTINCT _IMPAGE, _RFHLTH, _HCVU651, _RFHYPE5, _DRDXAR1, _SMOKER3, WTKG3, _RFBMI5, _EDUCAG, FTJUDA1_, FRUTDA1_, BEANDAY_, GRENDAY_, ORNGDAY_, VEGEDA1_, _TOTINDA, _FLSHOT5, DROCDY3_, _RFBING5, _DRNKDY4, _RFDRHV4, _RFDRMN4, _AIDTST3
FROM medium_table;

ALTER TABLE Testing
ADD COLUMN test_id INT PRIMARY KEY AUTO_INCREMENT FIRST ;


-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------


DROP TABLE IF EXISTS GE;
CREATE TABLE GE(
	_STATE DECIMAL(12,1),
	 AGE DECIMAL(12,1),
	 MARITAL DECIMAL(12,1),
	 EDUCA DECIMAL(12,1),
	 EMPLOY DECIMAL(12,1),
	 WEIGHT2 DECIMAL(12,1),
	 GENHLTH DECIMAL(12,1),
	 PHYSHLTH DECIMAL(12,1),
	 MENTHLTH DECIMAL(12,1),
	 HLTHPLN1 DECIMAL(12,1),
	 MEDCOST DECIMAL(12,1),
	 CHECKUP1 DECIMAL(12,1),
	 HIVTST6 DECIMAL(12,1),
	 DIABAGE2 DECIMAL(12,1),
	 test_id INT,
	 exc_id	INT,
	 fresh_id INT,
     chronic_id INT,
	 Smodrink_id INT);

INSERT INTO GE (_STATE, AGE, MARITAL, EDUCA, EMPLOY, WEIGHT2, GENHLTH, PHYSHLTH, MENTHLTH, HLTHPLN1, MEDCOST, CHECKUP1, HIVTST6, DIABAGE2)
SELECT _STATE, AGE, MARITAL, EDUCA, EMPLOY, WEIGHT2, GENHLTH, PHYSHLTH, MENTHLTH, HLTHPLN1, MEDCOST, CHECKUP1, HIVTST6, DIABAGE2
from medium_table;

-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ADDING CONSTAINT
ALTER TABLE GE
ADD CONSTRAINT testing_fk  	FOREIGN KEY (test_id) REFERENCES Testing(test_id),
ADD CONSTRAINT Smodrink_fk 	FOREIGN KEY (Smodrink_id) REFERENCES Smok_drinking(Smodrink_id),
ADD CONSTRAINT fresh_fk FOREIGN KEY (fresh_id) REFERENCES Fresh(fresh_id),
ADD CONSTRAINT exercise_fk FOREIGN KEY (exc_id) REFERENCES Exercise(exc_id),
ADD CONSTRAINT chronic_fk FOREIGN KEY (chronic_id) REFERENCES Chronic(chronic_id);

-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- CREATE INDEX ON THOSE TABLES
CREATE INDEX Chronic_index ON Chronic (BPMEDS,TOLDHI2,ASTHMA3,CHCSCNCR,CHCOCNCR,HAVARTH3,ADDEPEV2,CHCKIDNY,CHCVISON,DIABETE3);
CREATE INDEX Chronic_index_1 ON medium_table (BPMEDS,TOLDHI2,ASTHMA3,CHCSCNCR,CHCOCNCR,HAVARTH3,ADDEPEV2,CHCKIDNY,CHCVISON,DIABETE3);

CREATE INDEX STATE_index ON GE(_STATE);
CREATE INDEX STATE_index_1 on medium_table(_STATE);

CREATE INDEX Exercise_index on Exercise(EXERANY2, EXRACT01, EXEROFT1, QLACTLM2, USEEQUIP, LMTJOIN3);
CREATE INDEX Exercise_index_1 ON medium_table(EXERANY2, EXRACT01, EXEROFT1, QLACTLM2, USEEQUIP, LMTJOIN3);

CREATE INDEX FRESH_INDEX ON FRESH(FRUITJU1, FRUIT1, FVBEANS, FVGREEN, FVORANG);
CREATE INDEX FRESH_INDEX_1 ON medium_table(FRUITJU1, FRUIT1, FVBEANS, FVGREEN, FVORANG);

CREATE INDEX SMOKING_INDEX ON Smok_drinking(SMOKDAY2);
CREATE INDEX SMOKING_INDEX_1 ON medium_table(SMOKDAY2);

CREATE INDEX TEST_INDEX ON Testing(_FLSHOT5,_TOTINDA,_RFHLTH,_RFBMI5,_AIDTST3);
CREATE INDEX TEST_INDEX_1 ON medium_table(_FLSHOT5,_TOTINDA,_RFHLTH,_RFBMI5,_AIDTST3);


-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- CRREAT PROCEDURE FOR FRONTEND QUICK ACESS
DROP procedure IF EXISTS california
DELIMITER //
CREATE PROCEDURE california()
BEGIN
	DECLARE test VARCHAR(255);
    DECLARE not_test VARCHAR(255);

    SELECT CONCAT('Number of people in CA HAVE TESTED FOR HIV: ', COUNT(*)) INTO test
    FROM medium_table
    WHERE _STATE = 6 AND _AIDTST3=1;

	SELECT CONCAT('Number of people in CA HAVE NOT TESTED FOR HIV: ', COUNT(*)) INTO not_test
    FROM medium_table
    WHERE _STATE = 6 AND _AIDTST3=2;


	SELECT CONCAT(test,not_test);

END //
DELIMITER ;

-- call california();

DROP procedure IF EXISTS tennessee
DELIMITER //
CREATE PROCEDURE tennessee()
BEGIN
	DECLARE result VARCHAR(255);
    DECLARE not_result varchar(255);

    SELECT CONCAT('Number of people in TN HAVE TESTED FOR HIV: ', COUNT(*)) INTO result
    FROM medium_table
    WHERE _STATE = 47 AND _AIDTST3=1;

    SELECT CONCAT('Number of people in TN HAVE NOT TESTED FOR HIV: ', COUNT(*)) INTO not_result
    FROM medium_table
    WHERE _STATE = 47 AND _AIDTST3=1;

    SELECT CONCAT(result,not_result);
END //
DELIMITER ;
-- call tennessee();


DROP procedure IF EXISTS california_overweight
DELIMITER //
CREATE PROCEDURE california()
BEGIN
	DECLARE test VARCHAR(255);
    DECLARE not_test VARCHAR(255);

    SELECT CONCAT('Number of people in CA HAVE TESTED FOR HIV: ', COUNT(*)) INTO test
    FROM medium_table
    WHERE _STATE = 6 AND _RFBMI5=2;

	SELECT CONCAT('Number of people in CA HAVE NOT TESTED FOR HIV: ', COUNT(*)) INTO not_test
    FROM medium_table
    WHERE _STATE = 6 AND _RFBMI5=1;


	SELECT CONCAT(test,not_test);

END //
DELIMITER ;

-- call california_overweight();


DROP procedure IF EXISTS tennessee_overweight
DELIMITER //
CREATE PROCEDURE tennessee_overweight()
BEGIN
	DECLARE result VARCHAR(255);
    DECLARE not_result varchar(255);

    SELECT CONCAT('Number of people in TN HAVE OBESS/OVERWEIGHT : ', COUNT(*)) INTO result
    FROM medium_table
    WHERE _STATE = 47 AND _RFBMI5=2;

    SELECT CONCAT('Number of people in TN DO NOT HAVE OBESS/OVERWEIGHT: ', COUNT(*)) INTO not_result
    FROM medium_table
    WHERE _STATE = 47 AND _RFBMI5=1;

    SELECT CONCAT(result,not_result);
END //
DELIMITER ;

-- call tennessee_overweight();

-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- CREATE USER AND GRANT MY PARTNER ACCESS,

CREATE USER 'bowendu'@'IP' IDENTIFIED BY 'bowendu';


GRANT SELECT,CREATE
ON project.Chronic
TO 'bowendu'@'IP';

GRANT SELECT,CREATE
ON project.Exercise
TO 'bowendu'@'IP';

GRANT SELECT,CREATE
ON project.Smok_drinking
TO 'bowendu'@'IP';

GRANT SELECT,CREATE
ON project.medium_table
TO 'bowendu'@'IP';


GRANT SELECT,CREATE
ON project.smoking_drinking_1
TO 'bowendu'@'123.116.244.201';


GRANT SELECT,CREATE
ON project.smoking_drinking_2
TO 'bowendu'@'IP';

GRANT SELECT,CREATE
ON project.smoking_drinking_3
TO 'bowendu'@'IP';

GRANT SELECT,CREATE
ON project.smoking_drinking_4
TO 'bowendu'@'IP';

GRANT SELECT,CREATE
ON project.Fresh
TO 'bowendu'@'IP';


GRANT SELECT,CREATE
ON project.GE
TO 'bowendu'@'IP';

GRANT SELECT,CREATE
ON project.Testing
TO 'bowendu'@'IP';


GRANT CREATE VIEW
ON medium_table
TO 'bowendu'@'IP';


-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- ----------------------------------------------------------------
-- CREATING VIEWS, a lot of VIEWS even we cant fully use all of them
CREATE VIEW smoking_drinking_1 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _SMOKER3=1
GROUP BY _STATE;


CREATE VIEW smoking_drinking_2 AS
SELECT COUNT(*) AS N2
FROM medium_table
WHERE _SMOKER3=2
GROUP BY _STATE;


CREATE VIEW smoking_drinking_3 AS
SELECT COUNT(*) AS N3
FROM medium_table
WHERE _SMOKER3=3
GROUP BY _STATE;

CREATE VIEW smoking_drinking_4 AS
SELECT COUNT(*) AS N4
FROM medium_table
WHERE _SMOKER3=4
GROUP BY _STATE;


-- TEST FOR EACH STATE'S SMOKER NUMBER IS MATCH TO THE REPORT
SELECT SUM(N)
FROM smoking_drinking_1;
SELECT SUM(N2)
FROM smoking_drinking_2;
SELECT SUM(N3)
FROM smoking_drinking_3;
SELECT SUM(N4)
FROM smoking_drinking_4;


-- RFBMI5
CREATE VIEW overweight_1 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _RFBMI5=1
GROUP BY _STATE;

CREATE VIEW overweight_2 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _RFBMI5=2
GROUP BY _STATE;

CREATE VIEW overweight_9 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _RFBMI5=9
GROUP BY _STATE;

-- IMPAGE
CREATE VIEW age_18_24 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _IMPAGE BETWEEN 18 AND 24
GROUP BY _STATE;

CREATE VIEW age_25_34 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _IMPAGE BETWEEN 25 AND 34
GROUP BY _STATE;

CREATE VIEW age_35_44 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _IMPAGE BETWEEN 35 AND 44
GROUP BY _STATE;

CREATE VIEW age_45_54 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _IMPAGE BETWEEN 45 AND 54
GROUP BY _STATE;

CREATE VIEW age_55_64 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _IMPAGE BETWEEN 55 AND 64
GROUP BY _STATE;

CREATE VIEW age_65_99 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _IMPAGE BETWEEN 65 AND 99
GROUP BY _STATE;

-- HCVU651
CREATE VIEW health_care_1 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _HCVU651 = 1
GROUP BY _STATE;

CREATE VIEW health_care_2 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _HCVU651 = 2
GROUP BY _STATE;

CREATE VIEW health_care_9 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _HCVU651 = 9
GROUP BY _STATE;

-- RFHYPE5
CREATE VIEW blood_pressure_1 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _RFHYPE5 = 1
GROUP BY _STATE;

CREATE VIEW blood_pressure_2 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _RFHYPE5 = 2
GROUP BY _STATE;

CREATE VIEW blood_pressure_9 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _RFHYPE5 = 9
GROUP BY _STATE;

-- EDUCAG
CREATE VIEW education_1 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _EDUCAG = 1
GROUP BY _STATE;

CREATE VIEW education_2 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _EDUCAG = 2
GROUP BY _STATE;

CREATE VIEW education_3 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _EDUCAG = 3
GROUP BY _STATE;

CREATE VIEW education_4 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _EDUCAG = 4
GROUP BY _STATE;

CREATE VIEW education_9 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _EDUCAG = 9
GROUP BY _STATE;

-- AIDTST3
CREATE VIEW aids_test_1 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _AIDTST3 = 1
GROUP BY _STATE;

CREATE VIEW aids_test_2 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _AIDTST3 = 2
GROUP BY _STATE;

CREATE VIEW aids_test_9 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _AIDTST3 = 9
GROUP BY _STATE;

CREATE VIEW aids_test_m AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _AIDTST3 = 'Missing'
GROUP BY _STATE;

-- TOTINDA
CREATE VIEW exercise_1 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _TOTINDA = 1
GROUP BY _STATE;

CREATE VIEW exercise_2 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _TOTINDA = 2
GROUP BY _STATE;

CREATE VIEW exercise_9 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _TOTINDA = 9
GROUP BY _STATE;

-- _DRNKDY4
CREATE VIEW alcohol_0 AS
SELECT COUNT(*) AS N
FROM medium_table
WHERE _DRNKDY4 = 0
GROUP BY _STATE;

CREATE VIEW alcohol_greater_than_0 AS  -- at least one drink
SELECT COUNT(*) AS N
FROM medium_table
WHERE _DRNKDY4 BETWEEN 1 AND 9899
GROUP BY _STATE;

CREATE VIEW alcohol_9900 AS  -- not sure or missing information
SELECT COUNT(*) AS N
FROM medium_table
WHERE _DRNKDY4 = 9900
GROUP BY _STATE;
