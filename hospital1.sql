--------------------------------------------------------
--  File created - Friday-January-04-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "DVF"."DEPARTMENTS" 
   (	"ID_DEPARTMENT" NUMBER(*,0), 
	"NAME" NVARCHAR2(50), 
	"ID_MANAGER" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."DEPARTMENTS"."ID_DEPARTMENT" IS 'id oddzialu';
   COMMENT ON COLUMN "DVF"."DEPARTMENTS"."NAME" IS 'nazwa oddzialu';
   COMMENT ON COLUMN "DVF"."DEPARTMENTS"."ID_MANAGER" IS 'id szefa oddzialu';
--------------------------------------------------------
--  DDL for Table DOCTORS
--------------------------------------------------------

  CREATE TABLE "DVF"."DOCTORS" 
   (	"ID_DOCTOR" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(50 BYTE), 
	"ID_MANAGER" NUMBER(*,0), 
	"SPECIALITY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."DOCTORS"."ID_DOCTOR" IS 'id doctor';
   COMMENT ON COLUMN "DVF"."DOCTORS"."FIRST_NAME" IS 'imie doktorka';
   COMMENT ON COLUMN "DVF"."DOCTORS"."LAST_NAME" IS 'nazwisko doktorka';
   COMMENT ON COLUMN "DVF"."DOCTORS"."ID_MANAGER" IS 'id MANAGER
';
   COMMENT ON COLUMN "DVF"."DOCTORS"."SPECIALITY" IS 'specjalizacja doktorka';
--------------------------------------------------------
--  DDL for Table HOLIDAYS
--------------------------------------------------------

  CREATE TABLE "DVF"."HOLIDAYS" 
   (	"ID_HOLIDAY" NUMBER(*,0), 
	"ID_DOCTOR" NUMBER(*,0), 
	"TYPE" VARCHAR2(50 BYTE), 
	"BEGINNING_DATE" DATE, 
	"END_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."HOLIDAYS"."ID_HOLIDAY" IS 'id urlopu';
   COMMENT ON COLUMN "DVF"."HOLIDAYS"."ID_DOCTOR" IS 'id doktora ktory bierze urlop';
   COMMENT ON COLUMN "DVF"."HOLIDAYS"."TYPE" IS 'rodzaj urlopu';
   COMMENT ON COLUMN "DVF"."HOLIDAYS"."BEGINNING_DATE" IS 'data rozpoczecia urlopu';
   COMMENT ON COLUMN "DVF"."HOLIDAYS"."END_DATE" IS 'data zakonczenia urlopu';
--------------------------------------------------------
--  DDL for Table PATIENTS
--------------------------------------------------------

  CREATE TABLE "DVF"."PATIENTS" 
   (	"ID_PATIENT" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME" VARCHAR2(100 BYTE), 
	"STREET" VARCHAR2(100 BYTE), 
	"HOUSE_NO" VARCHAR2(20 BYTE), 
	"FLAT_NO" VARCHAR2(20 BYTE), 
	"POSTAL_CODE" VARCHAR2(20 BYTE), 
	"CITY" VARCHAR2(20 BYTE), 
	"COUNTRY" VARCHAR2(20 BYTE), 
	"PESEL" VARCHAR2(11 BYTE), 
	"ID_CARD_NO" VARCHAR2(50 BYTE), 
	"ID_BED" NUMBER(*,0), 
	"ID_ROOM" NUMBER(*,0), 
	"ID_DOCTOR" NUMBER(*,0), 
	"ID_DEPARTMENT" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_PATIENT" IS 'Id pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."FIRST_NAME" IS 'imie pacjenta
';
   COMMENT ON COLUMN "DVF"."PATIENTS"."LAST_NAME" IS 'nazwisko pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."STREET" IS 'adres (ulica) pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."HOUSE_NO" IS 'numer domu pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."FLAT_NO" IS 'numer mieszkania pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."POSTAL_CODE" IS 'kod pocztowy pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."CITY" IS 'miasto pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."COUNTRY" IS 'kraj pochodzenia pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."PESEL" IS 'pesel pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_CARD_NO" IS 'nr paszportu pacjenta zagranicznego';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_BED" IS 'id lozka pacjenta w szpitalu';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_ROOM" IS 'id sali chorych w ktorej lezy pacjent';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_DOCTOR" IS 'id lekarza prowadzacego pacjenta';
   COMMENT ON COLUMN "DVF"."PATIENTS"."ID_DEPARTMENT" IS 'id oddzialu';
--------------------------------------------------------
--  DDL for Table ROOMS
--------------------------------------------------------

  CREATE TABLE "DVF"."ROOMS" 
   (	"ID_ROOM" NUMBER(*,0), 
	"BEDS_NO" NUMBER(*,0), 
	"ID_DEPARTMENT" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."ROOMS"."ID_ROOM" IS 'id pokoju';
   COMMENT ON COLUMN "DVF"."ROOMS"."BEDS_NO" IS 'liczba lozek w pokoju';
   COMMENT ON COLUMN "DVF"."ROOMS"."ID_DEPARTMENT" IS 'id_oddzialu';
--------------------------------------------------------
--  DDL for Table SURGERIES
--------------------------------------------------------

  CREATE TABLE "DVF"."SURGERIES" 
   (	"ID_SURGERY" NUMBER(*,0), 
	"ID_PATIENT" NUMBER(*,0), 
	"ID_DOCTOR" NUMBER(*,0), 
	"TYPE" VARCHAR2(50 BYTE), 
	"COLUMN1" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."SURGERIES"."ID_SURGERY" IS 'id operacji';
   COMMENT ON COLUMN "DVF"."SURGERIES"."ID_PATIENT" IS 'id operowanego pacjenta';
   COMMENT ON COLUMN "DVF"."SURGERIES"."ID_DOCTOR" IS 'id lekarza operujacego';
   COMMENT ON COLUMN "DVF"."SURGERIES"."TYPE" IS 'rodzaj operacji';
   COMMENT ON COLUMN "DVF"."SURGERIES"."COLUMN1" IS 'id sali operacyjnej';
--------------------------------------------------------
--  DDL for Table SURGERY_ROOMS
--------------------------------------------------------

  CREATE TABLE "DVF"."SURGERY_ROOMS" 
   (	"ID_SURGERY_ROOM" NUMBER(*,0), 
	"START_TIME" DATE, 
	"END_TIME" DATE, 
	"ID_DOCTOR" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DVF"."SURGERY_ROOMS"."ID_SURGERY_ROOM" IS 'id sali operacyjnej';
   COMMENT ON COLUMN "DVF"."SURGERY_ROOMS"."START_TIME" IS 'data startowa rezerwacji sali operacyjnej';
   COMMENT ON COLUMN "DVF"."SURGERY_ROOMS"."END_TIME" IS 'data konca operacji pacjenta';
   COMMENT ON COLUMN "DVF"."SURGERY_ROOMS"."ID_DOCTOR" IS 'id lekarza prowadzacego';
REM INSERTING into DVF.DEPARTMENTS
SET DEFINE OFF;
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (40,'Kardiologia',100);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (10,'Neurologia',102);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (20,'Ginekologia',101);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (30,'Ortopedia',103);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (50,'SOR',104);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (60,'OIOM',105);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (70,'Okulistyka',106);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (80,'Chemioterapia',107);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (100,'Kardiochirurgia',109);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (110,'Psychiatria',110);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (120,'Diagnostyka',111);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (130,'Chirurgia Plastyczna',112);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (140,'Chirurgia',113);
Insert into DVF.DEPARTMENTS (ID_DEPARTMENT,NAME,ID_MANAGER) values (150,'Pielegniarka',114);
REM INSERTING into DVF.DOCTORS
SET DEFINE OFF;
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (1,'Andrzej','Baran',100,'kardiolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (2,'Dorota','Olesza',101,'ginekolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (3,'Dawid','Najdul',102,'neurolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (4,'Patryk','Kowal',103,'ortopeda');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (100,'Pawel','Domagala',null,'kardiolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (101,'Daniela','Kozlowska',null,'ginekolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (102,'Kamil','Potra',null,'neurolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (103,'Romuald','Trzeciak',null,'ortopeda');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (5,'Matylda','Dabek',104,'SOR');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (6,'Jacek','Rosy',104,'SOR');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (7,'Maciej','Wazny',104,'SOR');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (8,'Lukasz','Uruk',105,'OIOM');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (9,'Konrad','Masny',106,'okulista');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (10,'Jozefa','Morwa',107,'chemioterapeuta');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (11,'Michal','Rogucki',108,'anestezjolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (12,'Piotr','Szipka',109,'kardiochirurg');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (104,'Jarek','Matusiak',null,'SOR');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (108,'Wojtek','Ciemny',null,'anestezjologia');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (107,'Lukasz','Jasny',null,'chemioterapia');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (106,'Maria','Luczenko',null,'okulistyka');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (105,'Henryk','Polny',null,'OIOM');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (109,'Pawel','Huk',null,'kardiochirurgia');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (16,'Marek','Kostka',101,'ginekolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (13,'Malgorzata','Bienek',100,'kardiolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (14,'Anna','Kuleszak',100,'kardiolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (15,'Aleksandra','Skowitek',100,'kardiolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (17,'Waclaw','Pogon',101,'ginekolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (18,'Anna','Kostka',101,'ginekolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (19,'Katarzyna','Moskitka',102,'neurolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (20,'Edmund','Powolny',102,'neurolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (21,'Franciszek','Dabek',102,'neurolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (22,'Konrad','Kacperczak',103,'ortopeda');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (23,'Mariola','Kiepska',103,'ortopeda');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (24,'Wanda','Mocna',105,'OIOM');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (25,'Grzegorz','Bak',105,'OIOM');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (26,'Eric','Foreman',111,'kardiolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (27,'Allison','Cameron',111,'neurochirurg');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (28,'James','Wilson',111,'onkolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (29,'Robert','Chase',111,'ortopeda');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (30,'Chris','Taub',111,'chirurg plastyczny');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (31,'Remy','Hadley',111,'internistka');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (110,'Piotr','Wielki',null,'psychiatria');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (111,'Gregory','House',null,'diagnostyka');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (112,'Stacy','Warner',null,'chirurgia plastyczna');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (32,'Miranda','Bailey',113,'chirurg');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (33,'Richard','Webber',113,'chirurg');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (34,'Alex','Karev',113,'chirurg dzieciecy');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (35,'Calliope','Torres',113,'chirurg ortopedyczny');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (36,'Amelia','Shepherd',113,'neurochirurg');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (37,'Judy','Reyes',114,'pielegniarka');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (38,'Aloma','Wright',114,'pielegniarka');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (39,'Andrew','Miller',114,'pielegniarka');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (40,'Sami','Lloyd',114,'pielegniarka');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (41,'Agata','Woznicka',106,'okulista');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (42,'Wiktoria','Consalida',106,'okulista');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (43,'Danuta','Debska',107,'chemioterapeuta');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (44,'Przemyslaw','Polek',107,'chemioterapeuta');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (45,'Rafal','Konica',108,'anestezjolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (46,'Krzysztof','Radwan',108,'anestezjolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (47,'Michal','Wilczewski',108,'anestezjolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (48,'Oliwia','Poplawska',108,'anestezjolog');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (49,'Mateusz','Kosmita',109,'kardiochirurg');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (50,'Franciszek','Jaskowiak',109,'kardiochirurg');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (51,'Kemm','Nunh',110,'psychiatra');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (52,'Zofia','Burska',110,'psychiatra');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (53,'Sherlock','Holmes',110,'psychiatra');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (54,'John','Watson',110,'psychiatra');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (55,'Honorata','Doplawa',112,'chirurg plastyczny');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (56,'Tomasz','Rusicki',112,'chirurg plastyczny');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (113,'Meredith','Grey',null,'chirurgia');
Insert into DVF.DOCTORS (ID_DOCTOR,FIRST_NAME,LAST_NAME,ID_MANAGER,SPECIALITY) values (114,'Monika','Dolata',null,'Pielegniarka');
REM INSERTING into DVF.HOLIDAYS
SET DEFINE OFF;
Insert into DVF.HOLIDAYS (ID_HOLIDAY,ID_DOCTOR,TYPE,BEGINNING_DATE,END_DATE) values (1,1,'wypoczynkowy',to_date('04-JAN-19','DD-MON-RR'),to_date('11-JAN-19','DD-MON-RR'));
Insert into DVF.HOLIDAYS (ID_HOLIDAY,ID_DOCTOR,TYPE,BEGINNING_DATE,END_DATE) values (2,12,'wypoczynkowy',to_date('11-JAN-19','DD-MON-RR'),to_date('17-JAN-19','DD-MON-RR'));
Insert into DVF.HOLIDAYS (ID_HOLIDAY,ID_DOCTOR,TYPE,BEGINNING_DATE,END_DATE) values (3,10,'wypoczynkowy',to_date('12-FEB-19','DD-MON-RR'),to_date('19-FEB-19','DD-MON-RR'));
Insert into DVF.HOLIDAYS (ID_HOLIDAY,ID_DOCTOR,TYPE,BEGINNING_DATE,END_DATE) values (4,17,'NZ',to_date('04-JAN-19','DD-MON-RR'),to_date('05-JAN-19','DD-MON-RR'));
Insert into DVF.HOLIDAYS (ID_HOLIDAY,ID_DOCTOR,TYPE,BEGINNING_DATE,END_DATE) values (5,15,'L4',to_date('02-JAN-19','DD-MON-RR'),to_date('09-JAN-19','DD-MON-RR'));
REM INSERTING into DVF.PATIENTS
SET DEFINE OFF;
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (1,'Lucas','Ksieciunio','Palacowa','1',null,'61-987','Poznan','Poland','93526176233',null,51,111,53,110);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (2,'Dagmara','Dolata','Glogowska','43','4','62-876','Poznan','Poland','78256173822',null,61,131,55,130);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (3,'Dariusz','Giewont','Naramowicka','212',null,'61-611','Poznan','Poland','95273849277',null,56,121,26,120);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (4,'Halina','Stunicka','Lozycka','43','6','60-271','Poznan','Poland','90120887277',null,1,11,19,10);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (5,'Hanna','Kajdasz','Saramacka','543','32','61-765','Poznan','Poland','89030309766',null,6,21,18,20);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (6,'Malgorzata','Lubisz','Wojska Polskiego','32','2','60-354','Poznan','Poland','88120416322',null,11,31,22,30);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (7,'Franciszek','Kornacki','Wilczak','243','21','61-765','Poznan','Poland','78042002343',null,16,41,13,40);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (8,'Anna','Mocna','Wilczy Mlyn','34','2','63-423','Poznan','Poland','72083086266',null,21,51,5,50);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (9,'Aleksandra','Kaniewskowa','Vitosa','32','23','99-929','Moskwa','Russia',null,'3425161',26,61,8,60);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (10,'Katarzyna','Kowalczyk','Mogilenska','453',null,'83-918','Warszawa','Poland','87052187277',null,31,71,9,71);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (11,'Monika','Radwanska','Narodowcow','43','23','87-933','Srem','Poland','91070783277',null,36,81,10,80);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (12,'Urszula','Modna','Garnizonowa','43','3','60-321','Poznan','Poland','87061276355',null,41,91,11,90);
Insert into DVF.PATIENTS (ID_PATIENT,FIRST_NAME,LAST_NAME,STREET,HOUSE_NO,FLAT_NO,POSTAL_CODE,CITY,COUNTRY,PESEL,ID_CARD_NO,ID_BED,ID_ROOM,ID_DOCTOR,ID_DEPARTMENT) values (13,'Jadwiga','Wolska','Miedzychodzka','243',null,'62-087','Poznan','Poland','76120909122',null,46,101,12,100);
REM INSERTING into DVF.ROOMS
SET DEFINE OFF;
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (11,2,10);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (21,2,20);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (31,2,30);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (41,2,40);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (51,5,50);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (61,2,60);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (71,4,70);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (81,2,80);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (91,3,90);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (101,3,100);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (111,2,110);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (121,5,120);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (131,3,130);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (141,2,140);
Insert into DVF.ROOMS (ID_ROOM,BEDS_NO,ID_DEPARTMENT) values (151,1,150);
REM INSERTING into DVF.SURGERIES
SET DEFINE OFF;
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (1,2,55,'korekta nosa',1);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (2,3,26,'wyrostek',2);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (3,4,19,'guz mozgu',3);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (4,5,18,'porod CC',4);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (5,6,22,'ACL',5);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (6,7,13,'zastawka',5);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (7,8,5,'nastawienie kosci ramiennej',4);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (8,9,8,'transplantacja',3);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (9,10,9,'korekta jaskry',2);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (10,11,10,'przeszczep',1);
Insert into DVF.SURGERIES (ID_SURGERY,ID_PATIENT,ID_DOCTOR,TYPE,COLUMN1) values (11,13,12,'przeszczep',2);
REM INSERTING into DVF.SURGERY_ROOMS
SET DEFINE OFF;
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (1,to_date('18-JUN-20','DD-MON-RR'),to_date('18-JUN-20','DD-MON-RR'),55);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (2,to_date('14-APR-20','DD-MON-RR'),to_date('14-APR-20','DD-MON-RR'),26);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (3,to_date('11-MAR-20','DD-MON-RR'),to_date('11-MAR-20','DD-MON-RR'),19);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (4,to_date('23-JAN-19','DD-MON-RR'),to_date('23-JAN-19','DD-MON-RR'),18);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (5,to_date('24-JUL-19','DD-MON-RR'),to_date('24-JUL-19','DD-MON-RR'),22);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (5,to_date('11-JAN-18','DD-MON-RR'),to_date('11-JAN-18','DD-MON-RR'),13);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (4,to_date('21-APR-21','DD-MON-RR'),to_date('21-APR-21','DD-MON-RR'),5);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (3,to_date('26-AUG-20','DD-MON-RR'),to_date('26-AUG-20','DD-MON-RR'),8);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (2,to_date('05-JAN-21','DD-MON-RR'),to_date('05-JAN-21','DD-MON-RR'),9);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (1,to_date('11-FEB-20','DD-MON-RR'),to_date('11-FEB-20','DD-MON-RR'),10);
Insert into DVF.SURGERY_ROOMS (ID_SURGERY_ROOM,START_TIME,END_TIME,ID_DOCTOR) values (2,to_date('26-NOV-20','DD-MON-RR'),to_date('26-NOV-20','DD-MON-RR'),12);
