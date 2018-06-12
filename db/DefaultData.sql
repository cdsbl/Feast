INSERT INTO chapter (ChapterNumber, ChapterName);
VALUES ('1', 'Purpose and Definitions');

INSERT INTO chapter (ChapterNumber, ChapterName);
VALUES ('2', 'Management and Personnel');

INSERT INTO chapter (ChapterNumber, ChapterName);
VALUES ('3', 'Food');

INSERT INTO chapter (ChapterNumber, ChapterName);
VALUES ('4', 'Equipment, Utensils, and Linens');

INSERT INTO chapter (ChapterNumber, ChapterName);
VALUES ('5', 'Water, Plumbing, and Waste');

INSERT INTO chapter (ChapterNumber, ChapterName);
VALUES ('6', 'Physical Facilities');

INSERT INTO chapter (ChapterNumber, ChapterName);
VALUES ('7', 'Poisonous or Toxic Materials');

INSERT INTO chapter (ChapterNumber, ChapterName);
VALUES ('8', 'Compliance and Enforcement');

INSERT INTO regulationcontrolpoint (RegulationControlPoints);
VALUES ('People');

INSERT INTO regulationcontrolpoint (RegulationControlPoints);
VALUES ('Process');

INSERT INTO regulationcontrolpoint (RegulationControlPoints);
VALUES ('Place');

INSERT INTO regulationlevel (RegulationLevelName);
VALUES ('Pf');

INSERT INTO regulationlevel (RegulationLevelName);
VALUES ('P');

INSERT INTO regulationlevel (RegulationLevelName);
VALUES ('Core');

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('getC110110TitleScope',
'These provisions shall be known as the Food Code, hereinafter
referred to THESE RULES AND REGULATIONS OR THIS REGULATION.',
 1, 2, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210111Supervision_A',
'(A) Except as specified in (B) of this section the PERMIT HOLDER shall be the PERSON IN CHARGE or shall designate a PERSON IN CHARGE and shall ensure that a
PERSON IN CHARGE is present at the RETAIL FOOD ESTABLISHMENT during
all hours of operation.THESE RULES AND REGULATIONS establishes
definitions; sets standards for management and personnel,
FOOD operations, and EQUIPMENT and facilities; and provides for
FOOD ESTABLISHMENT plan review, PERMIT issuance, inspection,
EMPLOYEE RESTRICTION, and PERMIT suspension.',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210111Supervision_B',
'"(B) In a FOOD ESTABLISHMENT with two or more separately PERMITTED departments " +
                "that are the legal responsibility of the same PERMIT HOLDER and that are located on the same PREMISES, " +
                "the PERMIT HOLDER may, during specific time periods when food is not being prepared, packaged, " +
                "or served, designate a single PERSON IN CHARGE who is present on the PREMISES during all hours of " +
                "operation, and who is responsible for each separately PERMITTED FOOD ESTABLISHMENT on the PREMISES.',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210111Supervision_C',
'(C) Documenting or demonstrating the implementation of standard operating " +
                "procedures that ensures compliance with the requirements of these RULES AND REGULATIONS.\n" +
                "(1) Food preparation activities are directed and corrective action is taken, as needed, to protect the " +
                "health of the consumer; and\n" +
                "(2) In-house self-inspections of operations are conducted on a daily basis to ensure that food safety" +
                " policies and procedures are followed."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210220Supervision',
'"A PERSON IN CHARGE who demonstrates knowledge by being a FOOD protection manager " +
                "that is certified by a FOOD protection manager certification program that is evaluated and listed by a Conference " +
                "for Food Protection-recognized accrediting agency as conforming to the Conference for Food Protection Standards for " +
                "Accreditation of Food Protection Manager Certification Programs is deemed to comply with Subpart 2-102.11(B)."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_A',
'"(A) RETAIL FOOD ESTABLISHMENT operations are not conducted in a private home " +
                "or in a room used as living or sleeping quarters as specified under Subpart 6-202.111; except as " +
                "provided in this Regulation. Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_B',
'"(B) PERSONS unnecessary to the RETAIL FOOD ESTABLISHMENT operation are not " +
                "allowed\n" +
                "in the FOOD preparation, FOOD storage, or WAREWASHING areas, except that brief visits and tours may " +
                "be authorized by the PERSON IN CHARGE if steps are taken to ensure that exposed FOOD; clean EQUIPMENT, " +
                "UTENSILS, and LINENS; and unwrapped SINGLE- SERVICE and SINGLE-USE ARTICLES are protected from contamination; Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_C',
'"(C) EMPLOYEES and other PERSONS such as delivery and maintenance PERSONS and " +
                "pesticide applicators entering the FOOD preparation, FOOD storage, and WAREWASHING areas comply with this Regulation; Pf";
        String C210311EmployeeHealth_D = "(D) EMPLOYEES are effectively cleaning their hands, by routinely monitoring " +
                "the\n" +
                "EMPLOYEES handwashing; Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_E',
'"(E) EMPLOYEES are visibly observing FOODS as they are received to determine " +
                "that they are from APPROVED sources, delivered at the required temperatures, protected from contamination, " +
                "unADULTERATED, and accurately presented, by routinely monitoring the EMPLOYEES observations and periodically " +
                "evaluating FOODS upon their receipt; Pf"',
2, 1, 1);

NSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_F',
'"(F) EMPLOYEES are properly cooking POTENTIALLY HAZARDOUS FOOD, " +
                "TIME/TEMPERATURE CONTROL FOR SAFETY FOOD being particularly careful in cooking those FOODS known to " +
                "cause severe foodborne illness and death, such as EGGS and COMMINUTED MEATS, through daily oversight " +
                "of the EMPLOYEES routine monitoring of the cooking temperatures using appropriate temperature measuring" +
                " devices properly scaled and calibrated as specified under Subpart 4-203.11 and Subparagraph 4-502.11(B); Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_G',
'"(G) EMPLOYEES are using proper methods to rapidly cool POTENTIALLY HAZARDOUS " +
                "FOODS (TIME/TEMPERATURE CONTROL FOR SAFETY FOOD) that are not held hot or are not for consumption " +
                "within 4 hours, through daily oversight of the EMPLOYEES routine monitoring of FOOD temperatures " +
                "during cooling; P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_H',
'"(H) CONSUMERS who order raw; or partially cooked READY-TO-EAT FOODS of animal " +
                "origin are informed as specified under § 3-603.11 that the FOOD is not cooked sufficiently to ensure its safety;"',
2, 2, 3);







