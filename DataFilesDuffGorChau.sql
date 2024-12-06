CREATE TABLE PatientData(
   PatientID       INTEGER  NOT NULL PRIMARY KEY 
  ,firstName       VARCHAR(11) NOT NULL
  ,lastName        VARCHAR(10) NOT NULL
  ,dateofBirth     VARCHAR(10) NOT NULL
  ,address         VARCHAR(14) NOT NULL
  ,City            VARCHAR(13) NOT NULL
  ,Email           VARCHAR(31) NOT NULL
  ,DateOfTreatment VARCHAR(10)
  ,xrayType        VARCHAR(20)
  ,SSN             VARCHAR(12)
);

INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (1,'John','Smith','1980-01-15','123 Maple St','Springfield','john.smith@example.com','2023-02-01','Chest X-ray','123-45-6789');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (2,'Jane','Doe','1990-04-24','456 Oak St','Rivertown','jane.doe@example.com','2023-02-03','Knee X-ray','987-65-4321');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (3,'Emily','Davis','1975-06-12','789 Pine St','Lakeside','emily.davis@example.com','2023-02-05','Arm X-ray','234-56-7890');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (4,'Michael','Johnson','1985-03-30','321 Elm St','Hill Valley','michael.j@example.com','2023-02-07','Leg X-ray','123-12-1234');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (5,'Sarah','Wilson','1992-11-22','654 Birch St','Westfield','sarah.wilson@example.com','2023-02-09','Ankle X-ray','321-54-9876');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (6,'David','Brown','1988-12-10','987 Cedar St','Pine Hill','david.brown@example.com','2023-02-11','Head X-ray','654-32-1987');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (7,'Linda','Garcia','1983-05-25','159 Willow St','Oakwood','linda.garcia@example.com','2023-02-13','Foot X-ray','852-74-9630');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (8,'James','Taylor','1979-09-15','753 Cedar Ave','River City','james.taylor@example.com','2023-02-15','Back X-ray','753-16-7320');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (9,'Patricia','Martinez','1982-07-13','147 Cherry St','Greenfield','patricia.m@example.com','2023-02-17','Pelvis X-ray','849-25-9614');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (10,'Robert','Lee','1995-10-11','258 Pine Ave','Hill Park','robert.lee@example.com','2023-02-19','Neck X-ray','741-85-2589');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (11,'Jessica','White','1981-02-20','369 Maple Ave','Lakewood','jessica.white@example.com','2023-02-21','Wrist X-ray','963-18-7410');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (12,'William','Harris','1976-08-05','258 Oak Dr','Rainy City','william.harris@example.com','2023-02-23','Shoulder X-ray','357-91-2468');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (13,'Barbara','Clark','1987-04-19','951 Birch Blvd','Sunnydale','barbara.clark@example.com','2023-02-25','Hip X-ray','159-73-4862');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (14,'Thomas','Lewis','1993-01-30','753 Elm Blvd','Silver Valley','thomas.lewis@example.com','2023-02-27','Nose X-ray','258-14-1569');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (15,'Matthew','Robinson','1978-03-14','357 Cedar St','Forest Town','matthew.robinson@example.com','2023-03-01','Elbow X-ray','951-46-7897');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (16,'Laura','Walker','1986-12-29','123 Pine Blvd','Riverdale','laura.walker@example.com','2023-03-03','Chest X-ray','753-95-2368');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (17,'Timothy','Hall','1989-11-26','482 Maple St','Clearwater','timothy.hall@example.com','2023-03-05','Back X-ray','123-98-5426');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (18,'Nancy','Young','1984-07-15','642 Oak St','Bright City','nancy.young@example.com','2023-03-07','Pelivs X-ray','789-12-4530');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (19,'Joseph','King','1994-09-08','135 Birch St','Brightwood','joseph.king@example.com','2023-03-09','Mouth X-ray','682-34-2342');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (20,'Karen','Scott','1980-05-18','578 Cedar Dr','Harmonyville','karen.scott@example.com','2023-03-11','Full Body X-ray','541-12-7562');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (21,'Brian','Torres','1982-03-22','697 Pine Rd','Maplewood','brian.torres@example.com','2023-03-13','Chest X-ray','789-99-1450');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (22,'Amanda','Nguyen','1995-04-05','347 Maple Ave','River Town','amanda.nguyen@example.com','2023-03-15','Knee X-ray','753-63-2580');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (23,'Kevin','Hill','1991-07-18','221 Elm St','Maple Glen','kevin.hill@example.com','2023-03-17','Arm X-ray','285-95-6784');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (24,'Alice','Adams','1969-11-10','117 Cedar Dr','Oak Valley','alice.adams@example.com','2023-03-19','Leg X-ray','963-14-8795');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (25,'Steven','Nelson','1974-06-21','675 Birch Rd','River City','steven.nelson@example.com','2023-03-21','Ankle X-ray','749-51-6359');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (26,'Michelle','Carter','1983-08-03','432 Maple Blvd','Spring Valley','michelle.carter@example.com','2023-03-23','Chest X-ray','791-74-3028');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (27,'Donald','Mitchell','1977-05-09','962 Oak Dr','Clear Lake','donald.mitchell@example.com','2023-03-25','Head X-ray','159-88-2591');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (28,'Lisa','Perez','1985-02-20','154 Pine St','Lakeridge','lisa.perez@example.com','2023-03-27','Foot X-ray','481-32-7103');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (29,'Charles','Roberts','1989-01-14','875 Birch Rd','Brookside','charles.roberts@example.com','2023-03-29','Back X-ray','178-46-0772');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (30,'Karen','Turner','1992-05-20','643 Maple St','Eastlake','karen.turner@example.com','2023-03-31','Pelvis X-ray','879-15-9428');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (31,'Eric','Phillips','1981-03-30','298 Cedar St','Hilltop','eric.phillips@example.com','2023-04-02','Chest X-ray','132-57-6942');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (32,'Sophia','Campbell','1987-06-09','569 Oak Dr','West Ridge','sophia.campbell@example.com','2023-04-04','Knee X-ray','987-68-2345');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (33,'Anthony','Parker','1990-04-04','276 Birch Ave','Crestwood','anthony.parker@example.com','2023-04-06','Arm X-ray','774-43-6728');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (34,'Jessica','Edwards','1988-08-11','580 Pine Dr','River Valley','jessica.edwards@example.com','2023-04-08','Leg X-ray','658-93-6145');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (35,'William','Collins','1975-11-05','420 Cedar Blvd','Maple Valley','william.collins@example.com','2023-04-10','Ankle X-ray','235-61-7943');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (36,'Gloria','Stewart','1982-02-13','330 Elm St','Crescent City','gloria.stewart@example.com','2023-04-12','Chest X-ray','758-39-4692');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (37,'Christopher','Sanchez','1994-02-20','912 Maple St','Oakwood','christopher.sanchez@example.com','2023-04-14','Head X-ray','361-84-8695');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (38,'Ruth','Morris','1986-05-07','503 Birch Blvd','Hilltop','ruth.morris@example.com','2023-04-16','Foot X-ray','951-73-1024');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (39,'Albert','Rogers','1978-09-14','260 Cedar Rd','Harriston','albert.rogers@example.com','2023-04-18','Back X-ray','174-75-2490');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (40,'Helen','Reed','1993-12-15','435 Oak Ave','Lakeview','helen.reed@example.com','2023-04-20','Pelvis X-ray','744-12-3680');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (41,'Jason','Cook','1980-02-28','510 Elm Dr','Bright Hill','jason.cook@example.com','2023-04-21','Chest X-ray','913-67-2761');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (42,'Megan','Morgan','1991-03-19','419 Pine Rd','Northland','megan.morgan@example.com','2023-04-23','Knee X-ray','275-83-18493');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (43,'Frank','Bell','1987-06-09','643 Maple Blvd','Westview','frank.bell@example.com','2023-04-24','Arm X-ray','498-76-6925');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (44,'Olivia','Murphy','1994-05-15','894 Birch Ave','Silver Lake','olivia.murphy@example.com','2023-04-26','Leg X-ray','720-69-3074');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (45,'Derek','Rivera','1974-07-02','623 Elm St','Lake Forest','derek.rivera@example.com','2023-04-28','Ankle X-ray','282-15-9624');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (46,'Emily','Cooper','1983-08-29','394 Pine St','Ridgeview','emily.cooper@example.com','2023-04-30','Chest X-ray','916-24-3746');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (47,'Lawrence','Richardson','1995-10-10','749 Birch Rd','West Valley','lawrence.richardson@example.com','2023-05-02','Head X-ray','262-38-2185');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (48,'Patricia','Cox','1989-01-17','479 Cedar Dr','Greater Hill','patricia.cox@example.com','2023-05-04','Foot X-ray','722-42-5816');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (49,'Angela','Howard','1981-03-03','632 Pine Ave','Northside','angela.howard@example.com','2023-05-06','Back X-ray','191-98-9763');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (50,'Jerry','Ward','1992-05-18','270 Oak St','River Bend','jerry.ward@example.com','2023-05-08','Pelvis X-ray','913-57-3574');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (51,'Zachary','Ramirez','1986-09-15','705 Maple Rd','Hillview','zachary.ramirez@example.com','2023-05-10','Chest X-ray','563-64-5178');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (52,'Betty','Johnson','1984-05-12','213 Birch St','Sunnyvale','betty.johnson@example.com','2023-05-12','Knee X-ray','421-61-1482');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (53,'Jacob','Lee','1979-08-20','130 Pine Blvd','Montrose','jacob.lee@example.com','2023-05-14','Arm X-ray','378-97-6874');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (54,'Emily','Watson','1973-04-14','813 Cedar Dr','Great Oaks','emily.watson@example.com','2023-05-16','Leg X-ray','679-38-4913');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (55,'Brian','Wood','1982-06-11','467 Oak St','Westwood','brian.wood@example.com','2023-05-18','Ankle X-ray','831-49-5102');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (56,'Lucy','Price','1991-11-24','250 Birch Rd','Lake Hill','lucy.price@example.com','2023-05-20','Chest X-ray','942-42-5598');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (57,'Raymond','Bennett','1980-10-22','304 Cedar St','Hightown','raymond.bennett@example.com','2023-05-22','Head X-ray','482-54-2493');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (58,'Sarah','Rivera','1996-12-09','156 Pine Rd','Valley Hill','sarah.rivera@example.com','2023-05-24','Foot X-ray','294-81-0915');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (59,'Kevin','Hughes','1988-02-18','461 Oak Ave','Oak Grove','kevin.hughes@example.com','2023-05-26','Back X-ray','284-74-3694');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (60,'Anna','Gonzalez','1990-04-13','209 Maple St','East Ridge','anna.gonzalez@example.com','2023-05-28','Pelvis X-ray','468-93-7245');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (61,'Chris','Morales','1981-07-09','836 Birch Rd','River Slope','chris.morales@example.com','2023-05-30','Chest X-ray','159-61-4872');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (62,'Sheila','Jenkins','1994-08-14','622 Cedar Blvd','Lake Valley','sheila.jenkins@example.com','2023-06-01','Knee X-ray','962-47-2004');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (63,'Paul','Stone','1975-05-11','741 Oak Ave','Great Woods','paul.stone@example.com','2023-06-03','Arm X-ray','482-23-4918');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (64,'Doris','Webb','1988-09-27','066 Maple Rd','Clear Water','doris.webb@example.com','2023-06-05','Leg X-ray','283-71-6385');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (65,'Lucas','Turner','1998-01-20','610 Birch Ave','Maple Hill','lucas.turner@example.com','2023-06-06','Ankle X-ray','793-28-4826');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (66,'Ellen','Rivera','1990-11-17','514 Cedar St','Meadowland','ellen.rivera@example.com','2023-06-08','Chest X-ray','203-39-6741');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (67,'Walter','Brooks','1979-04-03','332 Oak Blvd','Southfield','walter.brooks@example.com','2023-06-10','Head X-ray','902-56-9083');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (68,'Barbara','Grant','1983-01-03','171 Maple St','Hillcrest','barbara.grant@example.com','2023-06-12','Foot X-ray','867-52-1348');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (69,'Nora','Reed','1995-03-30','465 Cedar Rd','Springfield','nora.reed@example.com','2023-06-14','Back X-ray','195-33-3399');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (70,'Gordon','Wood','1984-15-06','831 Maple Blvd','Glade Grove','gordon.wood@example.com','2023-06-16','Pelvis X-ray','562-42-1674');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (71,'Rachel','Brooks','1996-08-13','934 Birch Ave','River Valley','rachel.brooks@example.com','2023-06-18','Chest X-ray','204-09-3135');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (72,'Edgar','Johnson','1980-11-30','745 Oak Rd','Lake Edge','edgar.johnson@example.com','2023-06-20','Knee X-ray','982-15-8172');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (73,'Tara','Evans','1999-12-05','672 Maple St','Crestview','tara.evans@example.com','2023-06-22','Arm X-ray','830-64-2792');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (74,'Madison','White','1988-01-22','740 Birch Blvd','Hillside','madison.white@example.com','2023-06-24','Leg X-ray','839-82-6973');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (75,'Melissa','Carter','1987-11-15','596 Pine St','Westbrook','melissa.carter@example.com','2023-06-26','Ankle X-ray','132-84-1675');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (76,'Nathan','Nguyen','1975-03-14','431 Cedar Blvd','Hillview','nathan.nguyen@example.com','2023-06-28','Chest X-ray','284-93-7645');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (77,'Lillian','Torres','1995-02-13','573 Maple Ave','Sandburg','lillian.torres@example.com','2023-06-30','Head X-ray','648-27-9051');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (78,'Nicholas','Edwards','1984-08-01','194 Birch St','Oak Valley','nicholas.edwards@example.com','2023-07-02','Foot X-ray','765-98-1328');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (79,'Keith','Hall','1991-01-20','150 Cedar Dr','Glenwood','keith.hall@example.com','2023-07-04','Back X-ray','884-32-6739');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (80,'Emma','Wright','1993-09-15','745 Oak Rd','Westfield','emma.wright@example.com','2023-07-06','Pelvis X-ray','872-12-2540');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (81,'Benjamin','Lopez','1987-02-27','551 Birch Blvd','Maple Glen','benjamin.lopez@example.com','2023-07-08','Chest X-ray','456-94-6581');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (82,'Angela','Scott','1995-01-15','743 Cedar Rd','Lakewood','angela.scott@example.com','2023-07-10','Knee X-ray','246-51-7584');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (83,'Harold','Morris','1982-08-05','881 Maple Ave','Crestwood','harold.morris@example.com','2023-07-12','Arm X-ray','325-78-1419');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (84,'Sophia','Lee','1996-03-14','583 Elm St','River City','sophia.lee@example.com','2023-07-14','Leg X-ray','483-58-6723');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (85,'Lucy','Young','1985-10-30','194 Oak Blvd','Springhill','lucy.young@example.com','2023-07-16','Ankle X-ray','382-46-7591');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (86,'Gordon','Allen','1990-12-05','347 Birch Ave','Westgate','gordon.allen@example.com','2023-07-18','Chest X-ray','452-98-9836');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (87,'Richard','Hill','1984-08-16','136 Maple Blvd','Lake Forest','richard.hill@example.com','2023-07-20','Head X-ray','691-73-4073');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (88,'Victoria','Moore','1977-04-15','273 Cedar St','Sunnyvale','victoria.moore@example.com','2023-07-22','Foot X-ray','927-44-0592');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (89,'men','Anderson','1998-11-11','219 Maple Ave','Clear Lake','men.anderson@example.com','2023-07-24','Back X-ray','316-58-6933');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (90,'Karon','Martinez','1970-05-25','684 Cedar Blvd','Harmonyville','karon.martinez@example.com','2023-07-26','Pelvis X-ray','243-31-9827');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (91,'Nathanial','Evans','1990-06-30','889 Maple Rd','River Crest','nathanial.evans@example.com','2023-07-28','Chest X-ray','374-12-8256');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (92,'Ethel','Martinez','1991-04-27','883 Maple Rd','Brookside','ethel.martinez@example.com','2023-07-30','Knee X-ray','197-73-9456');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (93,'Chase','Kelly','1993-08-26','383 Pine Blvd','Westside','chase.kelly@example.com','2023-08-01','Arm X-ray','164-41-2321');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (94,'Kelsey','Parker','1980-12-03','554 Birch St','Maple Bay','kelsey.parker@example.com','2023-08-03','Leg X-ray','436-71-2356');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (95,'Lucas','Walker','1989-10-21','108 Cedar Rd','Sunnyfield','lucas.walker@example.com','2023-08-05','Ankle X-ray','573-54-8240');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (96,'Judy','Johnson','1997-09-01','448 Oak Blvd','Meadowlands','judy.johnson@example.com','2023-08-07','Chest X-ray','208-62-5492');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (97,'Tamara','Campbell','1993-04-22','729 Maple Blvd','Greenfield','tamara.campbell@example.com','2023-08-09','Head X-ray','542-36-7381');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (98,'Veronica','Gonzalez','1985-05-16','641 Birch St','Woodland','veronica.gonzalez@example.com','2023-08-11','Foot X-ray','592-83-3468');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (99,'George','Simmons','1982-03-23','485 Maple St','Lakeside','george.simmons@example.com','2023-08-13','Back X-ray','420-12-0018');
INSERT INTO PatientData(PatientID,firstName,lastName,dateofBirth,address,City,Email,DateOfTreatment,xrayType,SSN) VALUES (100,'Claire','Martinez','1992-07-09','316 Cedar Ave','Westlake','claire.martinez@hotmail.com','2023-08-21','Arm X-ray','696-9580-008');


Create table PatientRecord(
   PatientID INTEGER  NOT NULL PRIMARY KEY 
  ,Date      VARCHAR(10) NOT NULL
  ,XrayType  VARCHAR(50) NOT NULL
  ,Diagnosis VARCHAR(100) NOT NULL
);

INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (1,'2023-02-01','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (2,'2023-02-03','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (3,'2023-02-05','Arm X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (4,'2023-02-07','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (5,'2023-02-09','Ankle X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (6,'2023-02-11','Head X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (7,'2023-02-13','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (8,'2023-02-15','Back X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (9,'2023-02-17','Pelvis X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (10,'2023-02-19','Neck X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (11,'2023-02-21','Wrist X-ray','Joint Pain');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (12,'2023-02-23','Shoulder X-ray','Joint Pain');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (13,'2023-02-25','Hip X-ray','Joint Pain');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (14,'2023-02-27','Nose X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (15,'2023-03-01','Elbow X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (16,'2023-03-03','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (17,'2023-03-05','Back X-ray','Degenerative Disk Disease');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (18,'2023-03-07','Pelvis X-ray','Infection');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (19,'2023-03-09','Mouth X-ray','Routine Dental X-ray');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (20,'2023-03-11','Full Body X-ray','Routine General X-ray');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (21,'2023-03-13','Chest X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (22,'2023-03-15','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (23,'2023-03-17','Arm X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (24,'2023-03-19','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (25,'2023-03-21','Ankle X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (26,'2023-03-23','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (27,'2023-03-25','Head X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (28,'2023-03-27','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (29,'2023-03-29','Back X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (30,'2023-03-31','Pelvis X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (31,'2023-04-02','Chest X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (32,'2023-04-04','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (33,'2023-04-06','Arm X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (34,'2023-04-08','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (35,'2023-04-10','Ankle X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (36,'2023-04-12','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (37,'2023-04-14','Head X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (38,'2023-04-16','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (39,'2023-04-18','Back X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (40,'2023-04-20','Pelvis X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (41,'2023-04-21','Chest X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (42,'2023-04-23','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (43,'2023-04-24','Arm X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (44,'2023-04-26','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (45,'2023-04-28','Ankle X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (46,'2023-04-30','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (47,'2023-05-02','Head X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (48,'2023-05-04','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (49,'2023-05-06','Back X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (50,'2023-05-08','Pelvis X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (51,'2023-05-10','Chest X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (52,'2023-05-12','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (53,'2023-05-14','Arm X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (54,'2023-05-16','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (55,'2023-05-18','Ankle X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (56,'2023-05-20','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (57,'2023-05-22','Head X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (58,'2023-05-24','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (59,'2023-05-26','Back X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (60,'2023-05-28','Pelvis X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (61,'2023-05-30','Chest X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (62,'2023-06-01','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (63,'2023-06-03','Arm X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (64,'2023-06-05','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (65,'2023-06-06','Ankle X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (66,'2023-06-08','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (67,'2023-06-10','Head X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (68,'2023-06-12','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (69,'2023-06-14','Back X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (70,'2023-06-16','Pelvis X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (71,'2023-06-18','Chest X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (72,'2023-06-20','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (73,'2023-06-22','Arm X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (74,'2023-06-24','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (75,'2023-06-26','Ankle X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (76,'2023-06-28','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (77,'2023-06-30','Head X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (78,'2023-07-02','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (79,'2023-07-04','Back X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (80,'2023-07-06','Pelvis X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (81,'2023-07-08','Chest X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (82,'2023-07-10','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (83,'2023-07-12','Arm X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (84,'2023-07-14','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (85,'2023-07-16','Ankle X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (86,'2023-07-18','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (87,'2023-07-20','Head X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (88,'2023-07-22','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (89,'2023-07-24','Back X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (90,'2023-07-26','Pelvis X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (91,'2023-07-28','Chest X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (92,'2023-07-30','Knee X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (93,'2023-08-01','Arm X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (94,'2023-08-03','Leg X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (95,'2023-08-05','Ankle X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (96,'2023-08-07','Chest X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (97,'2023-08-09','Head X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (98,'2023-08-11','Foot X-ray','Fracture');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (99,'2023-08-13','Back X-ray','Broken Bone');
INSERT INTO PatientRecord(PatientID,Date,XrayType,Diagnosis) VALUES (100,'2023-08-21','Arm X-ray','Fracture');


create table Procedures (
ProcedureID int primary key not null,
    XRayType varchar(255) not null,
    Reason varchar(255) not null,
    DoctorID varchar(255) not null,
    XRayLength int not null
);

insert into Procedures (ProcedureID,XRayType,Reason,DoctorID,XRayLength)
values
(1,'Chest X-ray','Fracture Assessment',1,10),
(2,'Knee X-ray','Fracture Assessment',1,10),
(3,'Arm X-ray','Fracture Assessment',1,10),
(4,'Leg X-ray','Fracture Assessment',1,15),
(5,'Ankle X-ray','Fracture Assessment',1,10),
(6,'Head X-ray','Fracture Assessment',1,15),
(7,'Foot X-ray','Fracture Assessment',1,10),
(8,'Back X-ray','Fracture Assessment',2,20),
(9,'Pelvis X-ray','Fracture Assessment',2,15),
(10,'Neck X-ray','Fracture Assessment',3,20),
(11,'Wrist X-ray','Joint Disorders',3,10),
(12,'Shoulder X-ray','Joint Disorders',3,15),
(13,'Hip X-ray','Joint Disorders',3,20),
(14,'Nose X-ray','Fracture Assessment',2,5),
(15,'Elbow X-ray','Fracture Assessment',2,10),
(16,'Chest X-ray','Fracture Assessment',2,20),
(17,'Back X-ray','Degenerative Disk Disease',4,30),
(18,'Pelvis X-ray','Infection',5,30),
(19,'Mouth X-ray','Routine Dental X-ray',6,5),
(20,'Full Body X-ray','Routine General X-ray',6,60);
