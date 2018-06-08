
CREATE TABLE Chapter (
                ChapterId INT AUTO_INCREMENT NOT NULL,
                Chapter1 VARCHAR(50) NOT NULL,
                Chapter2 VARCHAR(50) NOT NULL,
                Chapter3 VARCHAR(50) NOT NULL,
                Chapter4 VARCHAR(50) NOT NULL,
                Chapter5 VARCHAR(50) NOT NULL,
                Chapter6 VARCHAR(50) NOT NULL,
                Chapter7 VARCHAR(50) NOT NULL,
                Chapter8 VARCHAR(50) NOT NULL,
                PRIMARY KEY (ChapterId)
);


CREATE TABLE Regulations (
                RegulationId INT AUTO_INCREMENT NOT NULL,
                ChapterId INT NOT NULL,
                RegulationSpecific VARCHAR(50) NOT NULL,
                PRIMARY KEY (RegulationId, ChapterId)
);


CREATE TABLE RegulationControlPoint (
                RegulationControlPointId INT AUTO_INCREMENT NOT NULL,
                RegulationId INT NOT NULL,
                ChapterId INT NOT NULL,
                ControlPointPeople VARCHAR(1000) NOT NULL,
                ControlPointPlace VARCHAR(1000) NOT NULL,
                ControlPointProcess VARCHAR(1000) NOT NULL,
                PRIMARY KEY (RegulationControlPointId, RegulationId, ChapterId)
);


CREATE TABLE RegulationLevel (
                RegulationLevelId INT AUTO_INCREMENT NOT NULL,
                RegulationId INT NOT NULL,
                ChapterId INT NOT NULL,
                RegulationPf VARCHAR(1000) NOT NULL,
                RegulationP VARCHAR(1000) NOT NULL,
                RegulationCore VARCHAR(1000) NOT NULL,
                PRIMARY KEY (RegulationLevelId, RegulationId, ChapterId)
);


ALTER TABLE Regulations ADD CONSTRAINT chapter_regulations_fk
FOREIGN KEY (ChapterId)
REFERENCES Chapter (ChapterId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE RegulationLevel ADD CONSTRAINT regulations_regulationlevel_fk
FOREIGN KEY (RegulationId, ChapterId)
REFERENCES Regulations (RegulationId, ChapterId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE RegulationControlPoint ADD CONSTRAINT regulations_regulationcontrolpoint_fk
FOREIGN KEY (RegulationId, ChapterId)
REFERENCES Regulations (RegulationId, ChapterId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
