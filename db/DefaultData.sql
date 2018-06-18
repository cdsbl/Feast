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

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES (' C210311EmployeeHealth_I',
' "(I) EMPLOYEES are properly SANITIZING cleaned multiuse EQUIPMENT and UTENSILS " +
                "before they are reused, through routine monitoring of solution temperature and exposure time for hot " +
                "water SANITIZING, and chemical concentration, pH, temperature, and exposure time for chemical SANITIZING; Pf"',
2, 2, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_J',
'"(J) CONSUMERS are notified that clean TABLEWARE is to be used when they return " +
                "to self- service areas such as salad bars and buffets as specified under Subpart 3-304.16; Pf"',
2, 2, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_K',
'"(K) Except when otherwise approved as specified in Subparagraph 3-301.11(B),\n" +
                "EMPLOYEES are preventing cross-contamination of READY-TO-EAT FOOD with bare\n" +
                "hands by properly using suitable UTENSILS such as deli tissue, spatulas, tongs, single- use gloves, or " +
                "dispensing EQUIPMENT; Pf"',
2, 2, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_L',
'"(L) EMPLOYEES are properly trained in FOOD safety as it relates to their " +
                "assigned duties; Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C210311EmployeeHealth_M',
'"(M) FOOD EMPLOYEES are informed of their responsibility to report in " +
                "accordance with LAW, to the PERSON IN CHARGE, information about their health and activities as they " +
                "relate to diseases that are transmissible through FOOD, as specified under Subpart 2-\n" +
                "201.11(A). Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C220111EmployeeHealth_A',
'"(A) The PERMIT HOLDER shall require FOOD EMPLOYEES and applicants to whom a " +
                "conditional offer of employment is made and FOOD EMPLOYEES to report to the PERSON IN CHARGE, information " +
                "about their health and activities as they relate to diseases that are transmissible through FOOD. " +
                "A FOOD EMPLOYEE or applicant shall report the information in a manner that allows the PERSON IN CHARGE" +
                " to prevent the likelihood of foodborne disease transmission, including providing necessary additional" +
                " information, such as the date of onset of symptoms and an illness, or of a diagnosis without symptoms, " +
                "if the FOOD EMPLOYEE or applicant:\n" +
                "(1) Has any of the following symptoms:\n" +
                "(a) Vomiting,P\n" +
                "(b) Diarrhea,P\n" +
                "(c) Jaundice,P\n" +
                "(d) Sore throat with fever, P\n" +
                "(e) A lesion containing pus such as a boil or infected wound that is open or draining and is:\n" +
                "(i) On the hands or wrists, unless an impermeable cover such as a finger cot or stall protects the " +
                "lesion and a SINGLE-USE glove is worn over the impermeable cover,P\n" +
                "(ii) On exposed portions of the arms, unless the lesion is protected by an impermeable cover,P or\n" +
                "(iii) On other parts of the body, unless the lesion is covered by a dry, durable, tight-fitting bandage;Pf\n" +
                "(2) Has an illness diagnosed by a HEALTH PRACTITIONER due to:\n" +
                "(a) Norovirus,P\n" +
                "30\n" +
                "(b) Acute Hepatitis A virus,P\n" +
                "(c) Shigella spp., P\n" +
                "(d) ENTEROHEMORRHAGIC or SHIGA TOXIN-PRODUCING ESCHERICHIA COLI,P or\n" +
                "(e) Any Salmonella, especially Salmonella Typhi;P\n" +
                "(3) Had a previous illness, diagnosed by a HEALTH PRACTITIONER, within the past 3 months due to " +
                "Salmonella Typhi, without having received antibiotic therapy, as determined by a HEALTH PRACTITIONER;P\n" +
                "(4) Has been exposed to, or is the suspected source of, a CONFIRMED DISEASE OUTBREAK, because the " +
                "FOOD EMPLOYEE or applicant consumed or prepared FOOD implicated in the outbreak, or consumed FOOD at " +
                "an event prepared by a PERSON who is infected or ill with:\n" +
                "(a) Norovirus within the past 48 hours of the last exposure,P\n" +
                "(b) ENTEROHEMORRHAGIC or SHIGA TOXIN-PRODUCING ESCHERICHIA COLI, or Shigella spp. within the past 3 " +
                "days of the last exposure,P\n" +
                "(c) Salmonella within the past 14 days of the last exposure,P or\n" +
                "(d) Hepatitis A virus within the past 30 days of the last exposure;P or\n" +
                "(5) Has been exposed by attending or working in a setting where there is a CONFIRMED DISEASE OUTBREAK, " +
                "or living in the same household as, and has knowledge about, an individual who works or attends a " +
                "setting where there is a CONFIRMED DISEASE OUTBREAK, or living in the same household as, and has " +
                "knowledge about, an individual diagnosed with an illness caused by:\n" +
                "(a) Norovirus within the past 48 hours of the last exposure,P\n" +
                "(b) ENTEROHEMORRHAGIC or SHIGA TOXIN-PRODUCING ESCHERICHIA COLI, or Shigella spp. within the past 3 " +
                "days of the last exposure,P\n" +
                "(c) Salmonella Typhi within the past 14 days of the last exposure,P or\n" +
                "(d) Hepatitis A virus within the past 30 days of the last exposure.P\n"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C220111EmployeeHealth_B',
'"(B) The PERSON IN CHARGE shall notify the REGULATORY AUTHORITY when a " +
                "FOOD EMPLOYEE is:\n" +
                "(1) Jaundiced,Pf or\n" +
                "(2) Diagnosed with an illness due to a pathogen as specified under Subparagraphs (A)(2)(a) - (e) of this " +
                "section.Pf\n"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C220111EmployeeHealth_C',
'"(C) The PERSON IN CHARGE shall ensure that the applicant:\n" +
                "(1) Who exhibits or reports a symptom, or who reports a diagnosed illness as specified under " +
                "Subparagraphs (A)(1) - (3) of this section, is prohibited from becoming a FOOD EMPLOYEE until the " +
                "applicant meets the criteria determined by the Department of Health.\n" +
                "31\n" +
                "(2) Who will work as a FOOD EMPLOYEE in a FOOD ESTABLISHMENT that serves as a HIGHLY SUSCEPTIBLE " +
                "POPULATION and reports a history of exposure as specified under Subparagraphs (A)(4) – (5), is " +
                "prohibited from becoming a FOOD EMPLOYEE until the applicant meets the criteria as specified by the " +
                "Department of Health. P\n"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C220111EmployeeHealth_D',
'"(D) The PERSON IN CHARGE shall ensure that a FOOD EMPLOYEE who exhibits or " +
                "reports a symptom, or who reports a diagnosed illness or a history of exposure as specified under " +
                "Subparagraphs (A)(1) - (5) of this section is:\n" +
                "(1) EXCLUDED until the Arkansas Department of Health is contacted to determine if the FOOD EMPLOYEE " +
                "shall be EXCLUDED or RESTRICTED. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C220111EmployeeHealth_E',
' "(E) A FOOD EMPLOYEE shall report to the PERSON IN CHARGE the information as " +
                "specified under (A) of this section.Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C220111EmployeeHealth_F',
' "(F) A FOOD EMPLOYEE shall comply with an EXCLUSION or RESTRICTION as specified " +
                "by the Arkansas Department of Health. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES (' C220112EmployeeHealth',
'"The person in charge shall exclude or restrict a food employee from a " +
                "food establishment until clearance is given by the Arkansas Department of Health."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230111PersonalCleanliness',
'"FOOD EMPLOYEES shall keep their hands and exposed portions of their arms clean. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230112PersonalCleanliness_A',
'(A) Except as specified in Subparagraph (D) of this section,
                FOOD EMPLOYEES shall clean their hands and exposed portions of their arms including
                (surrogate prosthetic devices for hands or arms) for at least 20 seconds, using a cleaning compound
                in a HANDWASHING SINK that is equipped as specified under Subpart 5-\n
                202.12 and Subpart 6-301. P',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230112PersonalCleanliness_B',
'"B) FOOD EMPLOYEES shall use the following cleaning procedure, in the order
stated, to clean their hands and exposed portions of their arms, including surrogate prosthetic devices
for hands and arms:(1) Rinse under clean, running warm water(2) Apply an amount of cleaning compound recommended by the cleaning compound manufacturer
      (3) Rub together vigorously for at least 10 to 15 seconds while:
                (a) Paying particular attention to removing soil from underneath the fingernails during the cleaning
                procedure, P
                (b) Creating friction on the surfaces of the hands and arms or surrogate prosthetic devices for hands
                and arms, finger tips, and areas between the fingers; P
                (4) Thoroughly rinse under clean, running warm water; P
                (5) Immediately follow the cleaning procedure with thorough drying using a method as specified under
                § 6-301.12. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230112PersonalCleanliness_C',
'"(C) To avoid re-contaminating their hands or surrogate prosthetic devices,
                FOOD EMPLOYEES may use disposable paper towels or similar clean barriers when touching surfaces such as
                manually operated faucet handles on a HANDWASHING SINK or the handle of a restroom door."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230112PersonalCleanliness_D',
'"(D) If APPROVED and capable of removing the types of soils encountered in
                the FOOD OPERATIONS involved, an automatic handwashing facility may be used by food employees to clean
                 their hands or surrogate prosthetic devices. This equipment must be installed and operated per the
                manufacturer’s instructions."',
2, 2, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230113PersonalCleanliness ',
'"empty - reserved for future use"',
2, 3, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_A ',
'"FOOD EMPLOYEES shall clean their hands and exposed portions of their arms
                as specified under Subpart 2-301.12 Immediately before engaging in food preparations including working
                with exposed food, clean equipment and utensils, and unwrapped single-service and single use articles P and:
                (A) After touching bare human body parts other than clean hands and clean, exposed portions of arms; P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_B ',
'"(B) After touching lacerations/cuts, sores or infected areas of the skin. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_B ',
'"(B) After touching lacerations/cuts, sores or infected areas of the skin. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_C',
'"(C) After using the toilet. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_D',
'"(D) After caring for or handling animals. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_E',
'"(E) Except as specified under 2-401.11(B) after coughing, sneezing, using
                a handkerchief or disposable tissue. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_F',
'"(F) After using tobacco; P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_G',
'(G) After eating or drinking; P',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES (' C230114PersonalCleanliness_H',
'(H) After handling soiled EQUIPMENT or UTENSILS; P',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_J ',
'"(J) During FOOD preparation, as often as necessary to remove soil and
                contamination and to prevent cross contamination when changing tasks; P',
2, 1, 2);


INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_K ',
'(K) When switching between working with raw FOOD and working with
                READY-TO-EAT FOODS. P"',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_L',
'(L) After engaging in other activities that contaminate the hands. P',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230114PersonalCleanliness_M',
'"(M) When hands are visibly soiled. P',
2, 1, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230115PersonalCleanliness',
'"FOOD EMPLOYEES shall clean their hands in a HANDWASHING SINK or APPROVED
                automatic handwashing facility and may not clean their hands in a sink used for FOOD preparation
                or WAREWASHING, or in a service sink or a curbed cleaning facility used for the disposal of mop water
                and similar liquid waste. Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230116PersonalCleanliness_A',
'"(A) Hand sanitizers and a chemical hand sanitizing solution used as a
                hand dip shall not be used in lieu of handwashing."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230116PersonalCleanliness_B',
'"(B) If used after handwashing must be approved for usage as a food
                additive which is generally recognized as safe (GRAS) within the meaning of the Federal Food,
                Drug and Cosmetic Act."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230116PersonalCleanliness_CB',
'"(C) Be applied only to hands that are cleaned as specified in these " +
                "Regulations."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230116PersonalCleanliness_D',
'"(D) If used as a hand dip shall be maintained clean and at a strength
                equivalent to at least 100 mg/l chlorine."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230211PersonalCleanliness_A',
'"(A) FOOD EMPLOYEES shall keep their fingernails trimmed, filed, and
                maintained so the edges and surfaces are cleanable and not rough."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230211PersonalCleanliness_B',
'"(B) Unless wearing intact gloves in good repair, a FOOD EMPLOYEE may
                not wear fingernail polish or artificial fingernails when working with exposed FOOD."',
2, 1, 3);

VALUES ('C230311PersonalCleanliness',
'"Except for a plain ring such as a wedding band, while preparing FOOD,
                FOOD EMPLOYEES may not wear jewelry including medical information jewelry on their arms and hands."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C230411PersonalCleanliness',
'"FOOD EMPLOYEES shall wear clean outer clothing to prevent contamination of FOOD, EQUIPMENT, UTENSILS,
LINENS, and SINGLE-SERVICE and SINGLE-USE ARTICLES."',
2, 1, 3);

ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C240111HygienicPractices_A',
'"(A) Except as specified in Subparagraph (B) of this section, an EMPLOYEE shall
                eat, drink, or use any form of tobacco only in designated areas where the contamination of exposed FOOD;
                clean EQUIPMENT, UTENSILS, and LINENS; unwrapped SINGLESERVICE and SINGLE-USE ARTICLES; or other items
                needing protection can result.',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C240111HygienicPractices_B',
'"(B) A FOOD EMPLOYEE may drink from a closed BEVERAGE container if the
                container is handled to prevent contamination of:
                (1) The EMPLOYEES hands;
                (2) The container; and
                (3) Exposed FOOD; clean EQUIPMENT, UTENSILS, and LINENS; and unwrapped
                SINGLE-SERVICE and SINGLE-USE ARTICLES."',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C240112HygienicPractices',
'"FOOD EMPLOYEES experiencing persistent sneezing, coughing, or a runny nose
                that causes discharges from the eyes, nose, or mouth may not work with exposed FOOD; clean EQUIPMENT,
                UTENSILS, and LINENS; or unwrapped SINGLE-SERVICE or SINGLE-USE ARTICLES.',
2, 1, 3);

ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C240211HygienicPractices_A',
'"(A) Except as provided in Subparagraph (B) of this section, FOOD EMPLOYEES " +
                shall wear hair restraints such as hats, hair coverings or nets, beard restraints, and clothing that
                covers body hair, that are designed and worn to effectively keep their hair from contacting exposed
                FOOD; clean EQUIPMENT, UTENSILS, and LINENS; and unwrapped SINGLE-SERVICE and SINGLE-USE ARTICLES.',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C240211HygienicPractices_B',
'(B) This section does not apply to FOOD EMPLOYEES such as counter staff who
                only serve BEVERAGES and wrapped or PACKAGED FOODS, hostesses, and wait staff if they present a minimal
                RISK of contaminating exposed FOOD; clean EQUIPMENT, UTENSILS, and LIN',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C240311HygienicPractices_A',
'"(A) Except as specified in Subparagraph (B) of this section, FOOD EMPLOYEES
                may not care for or handle animals that may be present such as patrol dogs, SERVICE ANIMALS, or pets
                that are allowed as specified in Subparagraphs 6-501.115
                (B)(2)-(5). Pf"',
2, 1, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C240311HygienicPractices_B',
'"(B) FOOD EMPLOYEES with SERVICE ANIMALS may handle or care for their
                SERVICE ANIMALS and FOOD EMPLOYEES may handle or care for FISH in aquariums or MOLLUSCAN SHELLFISH or
                crustacea in display tanks if they wash their hands as specified under Subpart 2-301.12
                and Subparagraph 2-301.14(C).',
2, 1, 3);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C310111Characteristics',
'"FOOD shall be safe, unADULTERATED, and, as specified under Subpart 3-601.12, honestly presented. P"',
3, 2, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C320111SospocRecords_A',
'"(A) FOOD shall be obtained from sources that comply with LAW. P"',
3, 2, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C320111SospocRecords_B ',
'"(B) FOOD prepared in a private home may not be used or offered for human consumption in a FOOD ESTABLISHMENT. P"',
3, 2, 2);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C320111SospocRecords_C',
'"(C) PACKAGED FOOD shall be labeled as specified in LAW, including 21 CFR 101 FOOD Labeling, 9 CFR 317 Labeling, Marking Devices, and Containers, and 9 CFR 381 Subpart N Labeling and Containers, and as specified under Subparts 3-202.17 and 3-202.18. Pf"',
3, 2, 1);

INSERT INTO Regulation (RegulationNumber, RegulationSpecific,
ChapterId, RegulationControlPointId, RegulationLevelId)
VALUES ('C320111SospocRecords_D',
'"(D) FISH, other than those specified in paragraph 3-402.11(B), that are intended for consumption in raw or undercooked form and allowed as specified in Subparagraph 3-401.11(D), may be offered for sale or service if they are obtained from a supplier that freezes the FISH as specified under paragraph 3-402.11; or if they are frozen on the PREMISES as specified under paragraph 3-402.11 and records are retained as specified under paragraph 3-402.12."',
3, 2, 3);









































