--------------------------------------------------------
--  ������ ������ - ������-9��-11-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence GAL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HESSPRING"."GAL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 64 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "HESSPRING"."SEQ_BOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "HESSPRING"."SEQ_NUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 17 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RNUM
--------------------------------------------------------

   CREATE SEQUENCE  "HESSPRING"."SEQ_RNUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "HESSPRING"."BOARD" 
   (	"BNO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"WRITER" VARCHAR2(50 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"UPDATEDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GALLERYBOARD
--------------------------------------------------------

  CREATE TABLE "HESSPRING"."GALLERYBOARD" 
   (	"GNO" NUMBER(10,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"WRITER" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"FILENAME" VARCHAR2(500 BYTE) DEFAULT 'default_img.ipg', 
	"REGDATE" DATE DEFAULT sysdate, 
	"UPDATEDATE" DATE DEFAULT sysdate, 
	"UPLOADPATH" VARCHAR2(500 BYTE), 
	"FULLNAME" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "HESSPRING"."MEMBER" 
   (	"ID" VARCHAR2(300 BYTE), 
	"PASSWD" VARCHAR2(300 BYTE), 
	"NAME" VARCHAR2(300 BYTE), 
	"BIRTH" VARCHAR2(300 BYTE), 
	"GENDER" VARCHAR2(300 BYTE), 
	"EMAIL" VARCHAR2(300 BYTE), 
	"PHONE" VARCHAR2(300 BYTE), 
	"ADDRESS" VARCHAR2(300 BYTE), 
	"ENABLED" CHAR(1 BYTE) DEFAULT '1'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER_AUTH
--------------------------------------------------------

  CREATE TABLE "HESSPRING"."MEMBER_AUTH" 
   (	"ID" VARCHAR2(50 BYTE), 
	"AUTH" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PERFORMANCE
--------------------------------------------------------

  CREATE TABLE "HESSPRING"."PERFORMANCE" 
   (	"NUM" NUMBER(6,0), 
	"PHOTO" VARCHAR2(500 BYTE) DEFAULT 'default_img.ipg', 
	"SNAME" VARCHAR2(500 BYTE), 
	"NAME" VARCHAR2(1000 BYTE), 
	"PERIOD" VARCHAR2(500 BYTE), 
	"PTIME" VARCHAR2(50 BYTE), 
	"VTIME" VARCHAR2(100 BYTE), 
	"GRADE" VARCHAR2(500 BYTE), 
	"PLACE" VARCHAR2(500 BYTE), 
	"PRICE" VARCHAR2(500 BYTE), 
	"FILENAME" VARCHAR2(500 BYTE), 
	"UPLOADPATH" VARCHAR2(500 BYTE), 
	"FULLNAME" VARCHAR2(500 BYTE), 
	"ALT" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PERSISTENT_LOGINS
--------------------------------------------------------

  CREATE TABLE "HESSPRING"."PERSISTENT_LOGINS" 
   (	"USERNAME" VARCHAR2(64 BYTE), 
	"SERIES" VARCHAR2(64 BYTE), 
	"TOKEN" VARCHAR2(64 BYTE), 
	"LAST_USED" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "HESSPRING"."RESERVATION" 
   (	"NUM" NUMBER(6,0), 
	"RNUM" NUMBER(6,0), 
	"ID" VARCHAR2(1000 BYTE), 
	"PHOTO" VARCHAR2(500 BYTE) DEFAULT 'default_img.ipg', 
	"NAME" VARCHAR2(1000 BYTE), 
	"VIEWDAY" VARCHAR2(1000 BYTE), 
	"VIEWDAY2" VARCHAR2(1000 BYTE), 
	"PEOPLENUM" VARCHAR2(100 BYTE), 
	"SEATNUM" VARCHAR2(500 BYTE), 
	"VTIME" VARCHAR2(100 BYTE), 
	"PAYCD" VARCHAR2(500 BYTE), 
	"PRICE" VARCHAR2(500 BYTE), 
	"TOTAL" VARCHAR2(1000 BYTE), 
	"FILENAME" VARCHAR2(500 BYTE), 
	"UPLOADPATH" VARCHAR2(500 BYTE), 
	"FULLNAME" VARCHAR2(500 BYTE), 
	"ALT" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HESSPRING.BOARD
SET DEFINE OFF;
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (3,'12','	34				','43',to_date('23/08/17','RR/MM/DD'),to_date('23/08/17','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (1,'�׽�Ʈ ����','�׽�Ʈ ����','user00',to_date('23/08/17','RR/MM/DD'),to_date('23/08/17','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (61,'sdf','				sdf	','XXX',to_date('23/08/21','RR/MM/DD'),to_date('23/08/21','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (84,'�ȳ��ϼ���234','�ȳ��ϼ���ȳ��ϼ���
�ȳ��ϼ���ȳ��ϼ���
�ȳ��ϼ���ȳ��ϼ���
�ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���ȳ��ϼ���		234		 
					','�չο�',to_date('23/08/22','RR/MM/DD'),to_date('23/08/22','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (22,'dd','		dddd			','Ȳqwe(qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (23,'��������','				������	','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (24,'������','		��������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (25,'��������','			��������		','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (26,'��������','			������		','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (27,'��������','				��������	','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (28,'������','		������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (29,'������','		������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (30,'������','		������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (31,'������','		������������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (32,'��������','		������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (33,'������','		��������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (34,'������','		��������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (35,'������','	��������				','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (36,'������','	��������				','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (37,'��������','		������			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (38,'1','			1		','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (39,'2','		2			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (40,'3','		3			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (41,'4','	4				','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (42,'5','	5				','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (43,'6','	6				','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (44,'7','		7			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (45,'8','					8','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (46,'9','		9			','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (47,'10','					10','Ȳqwe (qwemnb)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (48,'sdf','			sdf		','�չο� (XXX)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (49,'sdf','	sdf				','�չο� (XXX)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (53,'asdf','				asdf	','�չο�',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (51,'������','			��������		','�չο� (XXX)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (52,'sdf','			sdf		','�չο�(XXX)',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
Insert into HESSPRING.BOARD (BNO,TITLE,CONTENT,WRITER,REGDATE,UPDATEDATE) values (54,'wer','			wer		','XXX',to_date('23/08/18','RR/MM/DD'),to_date('23/08/18','RR/MM/DD'));
REM INSERTING into HESSPRING.GALLERYBOARD
SET DEFINE OFF;
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (1,'cc','ccc','ccc����','34f92ebd-07d7-47f7-aee9-02aca0c434dc_A.PNG,34f92ebd-07d7-47f7-aee9-02aca0c434dc_A.PNG,34f92ebd-07d7-47f7-aee9-02aca0c434dc_A.PNG',to_date('23/08/23','RR/MM/DD'),to_date('23/08/23','RR/MM/DD'),'2023\08\23,2023\08\23,2023\08\23',null);
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (4,'123','443','����sdfsfd','77737f20-dc03-46ec-9e5f-50e1a64e819f_newCat.png,90681b09-a30a-4dd5-b600-7488dc5ff41e_dog.jpg',to_date('23/08/23','RR/MM/DD'),to_date('23/08/23','RR/MM/DD'),'2023\08\23,2023\08\23',null);
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (5,'asdf','sadf','����asdf','06c30812-93d8-4e10-a91a-698bb07ee386_newCat.png',to_date('23/08/23','RR/MM/DD'),to_date('23/08/23','RR/MM/DD'),'2023\08\23',null);
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (6,'asdf','asdf','����asdf','96aa5ac3-98fe-4f0c-94b9-ae6537e4399b_newCat.png',to_date('23/08/23','RR/MM/DD'),to_date('23/08/23','RR/MM/DD'),'2023\08\23',null);
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (25,'sdf','sdf','����asdf','newCat.png',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'2023\08\25','2023%5C08%5C25%5Cs_eeed5d16-c28e-47c7-a434-78a5a14800a7_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (36,'���22222','�չο�','������22222','newCat.png',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_e5222705-ae03-4cbd-8f41-fb1a4ab319cc_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (2,'cc','ccc','ccc����','34f92ebd-07d7-47f7-aee9-02aca0c434dc_A.PNG',to_date('23/08/23','RR/MM/DD'),to_date('23/08/23','RR/MM/DD'),'2023\08\23',null);
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (3,'cc','ccc','ccc����','34f92ebd-07d7-47f7-aee9-02aca0c434dc_A.PNG,34f92ebd-07d7-47f7-aee9-02aca0c434dc_A.PNG',to_date('23/08/23','RR/MM/DD'),to_date('23/08/23','RR/MM/DD'),'2023\08\23,2023\08\23',null);
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (8,'��������','��������','���뤱������','undefined',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'undefined',null);
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (9,'asdf','asfd','����asdf','undefined',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (10,'��������','��������','���뤱������','undefined',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (11,'����մϴ�','����մϴ�','�������մϴ�','undefined',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (12,'asdf','asdf','����asfd','undefined',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (13,'����մϴ�111','����մϴ�111','�������մϴ�111','undefined',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (14,'ss','ssssss','��ddddddd��','A.PNG',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24%2Fs_7f31410f-3c71-4887-924f-4f2748c60b38_A.PNG');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (22,'0000','0000','����00000','newCat.png',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24%5Cs_a07147b5-e4b5-4df8-be13-331c26364e16_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (23,'��������','��������','���뤱������','A.PNG',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24%5Cs_bf74cbf4-a849-4b09-8e48-cf5f2b1fa09d_A.PNG');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (28,'wer','wer','����wer','newCat.png',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'2023\08\25','2023%5C08%5C25%5Cs_bd12d659-b361-41ca-b4bd-a147546dcb35_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (26,'1234','1234','����1234','newCat.png',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'2023\08\25','2023%5C08%5C25%5Cs_c42326cf-4e93-41e5-b5b7-0656196739b5_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (27,'0000','000','����0000','newCat.png',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'2023\08\25','2023%5C08%5C25%5Cs_23954373-e1a4-47f8-b8df-972ff208beb8_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (29,'�ݿ���','ssss','����ssss 
					','newCat.png',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'2023\08\25','2023%5C08%5C25%5Cs_cf6a5569-3888-440b-a3a3-b6e0cd18e1ae_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (30,'asdf','afd','����asdf','B.PNG',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'2023\08\25','2023%5C08%5C25%5Cs_0276e2cf-1001-45c1-910e-7959c0cd92fc_B.PNG');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (31,'sdf','�չο�','����dfs','newCat.png',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'2023\08\25','2023%5C08%5C25%5Cs_f92a7f0c-4c9a-4c1e-9cb3-0c2283b76181_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (32,'asdf','�չο�','����asfd','newCat.png',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'2023\08\25','2023%5C08%5C25%5Cs_7371e3c5-ed2f-4be8-88b2-7f6ef875e41b_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (33,'111','�չο�','����111','undefined',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (34,'2222','�չο�','����222','undefined',to_date('23/08/25','RR/MM/DD'),to_date('23/08/25','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (35,'���','�չο�','������','newCat.png',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_aba6d0c0-d176-404d-9396-1c758f1a1f61_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (37,'1111','�չο�','����111','newCat.png',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_2f2d7f77-0236-4161-afc7-58df78c585b3_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (55,'��ϼ�����������','�չο�','������ ������������
					 
					','newCat.png',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_7385c6d1-9fee-4985-90a2-8dccab7ee89a_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (39,'3333','�չο�','����3333','dog.jpg',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_96d9000b-c3c9-4159-bd61-8a3b1d082343_dog.jpg');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (40,'4444 123����','�չο�','����4444 
				123	���� 
					 
					','li.data("filename")',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'li.data("path")','li.data("fullname")');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (41,'5555','�չο�','����5555','undefined',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (42,'6666','�չο�','����6666','A.PNG',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_ef38b8d2-8a82-4873-9c5c-4a138c269561_A.PNG');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (43,'77777������������','�չο�','����7777 ������������
					','ĸó.PNG',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_9b5db521-e9f9-42a0-823b-79445f366d41_%EC%BA%A1%EC%B2%98.PNG');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (44,'88888','�չο�','����8888','newCat.png',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_90cc293b-607e-4e46-9892-b12bdaaf4ef7_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (45,'9999','�չο�','����999','undefined',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (46,'10123��','�չο�','����10 1234����
					 
					 
					','undefined',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'undefined','undefined');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (54,'qwe','��������','����qwe','newCat.png',to_date('23/08/28','RR/MM/DD'),to_date('23/08/28','RR/MM/DD'),'2023\08\28','2023%5C08%5C28%5Cs_c702626d-ad16-433f-8f0a-a51f7a094650_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (63,'��������11','�չο�','���뤱���� 
				11	 
					','aaa.jpg',to_date('23/09/11','RR/MM/DD'),to_date('23/09/11','RR/MM/DD'),'2023\09\11','2023%5C09%5C11%5Cs_c7c4fc86-a840-4857-a417-49859d0c1a87_aaa.jpg');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (15,'ss','sss','����ssss','B.PNG',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24%255cs_be9caf27-8980-463b-b28e-8934c36690e2_B.PNG');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (16,'dd','ddd','dddd','B.PNG',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24s_1353c0d2-41d1-44d9-b158-b535b01e1e58_B.PNG');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (17,'aa','aaa','aaaa','newCat.png',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24s_466b8928-4c1a-4717-a7f3-62958f1e9e57_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (18,'dd','dddd','dddd','newCat.png',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24%5Cs_02973d71-de3a-453f-9685-2c444fd3d93b_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (19,'Ȳ����','Ȳ����','Ȳ����','newCat.png',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24%5Cs_93f056ab-4f06-4f2d-b485-7b0a730759b8_newCat.png');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (20,'1234','1234','1234','B.PNG',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\24','2023%5C08%5C24%5Cs_f73395cd-f1d2-4684-ba4c-6efd7868db3d_B.PNG');
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (7,'rr','rr','rr','34f92ebd-07d7-47f7-aee9-02aca0c434dc_A.PNG',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\23',null);
Insert into HESSPRING.GALLERYBOARD (GNO,TITLE,WRITER,CONTENT,FILENAME,REGDATE,UPDATEDATE,UPLOADPATH,FULLNAME) values (21,'rr','rr','rr','34f92ebd-07d7-47f7-aee9-02aca0c434dc_A.PNG',to_date('23/08/24','RR/MM/DD'),to_date('23/08/24','RR/MM/DD'),'2023\08\23',null);
REM INSERTING into HESSPRING.MEMBER
SET DEFINE OFF;
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('hi','$2a$10$E/oXfqHMb0JWhNI6i0OaOOIUY3mpalBBPENA30QjGAHQXWPYhuTdG','��ȳ�','2023-06-01','��','hi@naver.com','010-1235-3453','13161��� ������ �߿��� �꼺���454���� 31234 (�ݱ���)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('hi0409','$2a$10$a93cOTh/Nqx/iXDgdCaob.KlRS70r.3o/7A45C/0HZVhshDvUeWni','Ȳ�ȳ�','2023-06-02','��','hi0409@naver.com','010-3456-8742','06257���� ������ �����23�� 2534 (���ﵿ)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('�ȳ��ϼ���','$2a$10$9A8sRTy.siziYBJLxTvdx.RwxRkNioYSrG7proUvfu3dP5glajm8.','��ȳ�','2023-05-25','��','dkssudgktpdy@naver.com','010-1234-4455','03470���� ���� ���·�6�� 25 (���ϵ�)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('n','$2a$10$.Scs1XApw4D7MWKm9J3Qd.2IXhMKJzRFNrwyuIx8Dzaif7ro97oai','n','2023-08-31','��','n@google.com','010-1234-2312','61501���� ���� 2��ȯ�� 8142 (���µ�)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('7','$2a$10$vdySGPo8fyO38hlgN9xtHOR2pvX2Qm./rkR9WQP8MEzwvHC2k/abi','7','2023-09-30','��','7@google.com','010-7777-7777','63609����Ư����ġ�� �������� ������ ���ֵ���7774���� 13-17777','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('f','$2a$10$kuUNQ1/MPpmdi0cvWpWq2Ob7YCbnHO50C2/uNqCnh6kIAgfmczite','��','2023-08-01','��','��@naver.com','010-4785-0000','05690���� ���ı� ������7�� 4������ (���̵�)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('77','$2a$10$m5A9Q4rFNDwX2K0Rr9eynecsJkZHnxtD/K0l4oclJGUlitDRPs8Na','77','2023-08-02','��','77@google.com','02-7777-7777','03481���� ���� ���·�7���� 477 (���ϵ�)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('GGG','$2a$10$/avgeFZwAw7bNMAc2Gui6O0rVjf4pwcIXvaenIYAt3jen6rdOdQ/m','������','2023-06-07','��','GGG@daum.net','010-1124-2255','61738���� ���� 2��ȯ�� 15082 (���ϵ�)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('uuuu','$2a$10$Yco7ZjYupMjwm3kxAC4IB..SImX0r/Z7hp1G6igJ12PNael1Lgysa','�ŤŤ�','2023-06-14','��','uuu@daum.net','010-0000-9999','01011���� ���ϱ� 4.19�� 299 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('lll','$2a$10$cwFlx5bSWSijvWGdp0R8.Oub/EnjvG3PhQsHdkCimvXVQDHOauUCu','��������','2023-08-02','��','lll@daum.net','010-1111-8888','01011���� ���ϱ� 4.19��8�� 28 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('7777','$2a$10$oYetB9PaC1Y8ljoMx5Hx0usa1QcD9.uXA3OhHgAFTNMpcRHB/brKi','��������','2023-07-30','��','7777@google.com','010-7777-777','05690���� ���ı� ������7�� 47 (���̵�)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('888','$2a$10$oFLV9/dcG/YqTYVC0hLiZukXrPfTcu0RBzvBf2o6x3samiTOSDFpO','Ȳ����','2023-08-01','��','888@naver.com','010-9535-8888','48556�λ� ���� 8�εη� 1-188 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('p','$2a$10$xVBbalE4IgcQIOOFBMIVDelofq3n8WgAMybls5Km9o5WffE.1p1tO','green','2023-08-02','��','p@naver.com','010-0000-0000','07940���� ��õ�� �����߾ӷ�10�� 300 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('DDD','$2a$10$k0439wow91NibwD1fp3Y/.BmmKbqsYFMJWwdETHkCuSZoS0qQwuwi','������','2023-06-27','��','ddd@naver.com','010-4444-5555','02830���� ���ϱ� �Ƹ����� 34 (���ҹ���6��)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('shotttttt','$2a$10$kdDE45XIa2tMdf2VheRNU.JrdjqPsvWEZMImsAV1FsoXpRGcM0FcW','Ȳ����tttt','2023-07-04','��','tttt@google.com','02-6666-7889','07345���� �������� 63�� 6-25 (���ǵ���)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('XXX','$2a$10$Lz2UJ4Mv9gfB53haD7emXeymgZBp7EY0mOZAbnnPzEw85ol69gllW','�չο�','2023-08-02','��','xxx@naver.com','010-1234-0000','62316���� ���걸 2��ȯ�� 247644 (�Ű���)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('KK','$2a$10$2TlJIWhH2eZLEKkyB/mmluJfUN81Tlwdc4YMmTLXI42da1VEwHUjG','Ȳ����','2023-07-07','��','kkk@naver.com','02-9535-7889','01014���� ���ϱ� 4.19��11�� 74 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('UUU','$2a$10$bTUJI0znbcO.fW9w7DAQT.0ge7QnDrlZ1CvoViANgFNUfmbiaOL6i','green','2023-08-02','��','������@naver.com','010-1234-2233','61900���� ���� 2��ȯ�� 23443 (���ﵿ)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('1234','$2a$10$L4RxRSP8vW.LL063yOVgluc2LjYPV31Rd6vL3LuwtvkDzFWtzs/O2','Ȳ����','2023-08-03','��','awsdfsd@naver.com','010-1234-1111','28456��� û�ֽ� ����� 1��ȯ�� 3941 (�ź���)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('99','$2a$10$5glRJYt2SNrVmxHSQyh32.S0P5CIoGmk8/CJfSYSSLMOTKz6mqDOS','Ȳ����','2023-08-03','��','9@naver.com','052-8888-9999','01014���� ���ϱ� 4.19��9���� 179 (������, �ϳ���ũ��)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('qwe','$2a$10$0VtW5Q9aW3KGPvfCkqx5POy6YF/qrQSZ0kHnGvXdeTLKmKBjIqQhy','��������','2023-08-02','��','qwe@naver.com','010-3333-4444','01014���� ���ϱ� 4.19��11�� 74 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('red','$2a$10$n2DWl3RAjqjzRlt2k/HYBexwTt6bDnWj6m0k4ucRVs9DhvFvNcwbq','Ȳ����','2023-07-31','��','red@google.com','010-4785-4444','01014���� ���ϱ� 4.19��11�� 84 (������, �¸�׺�����)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('pink','$2a$10$hwl8Ray9ZeyyEvxziChvDONkgHaDFgkSaAaX0idnKUNkcmkiO8TLe','Ȳ��ũ','2020-06-19','��','pink@google.com','010-6567-8866','01016���� ���ϱ� 4.19��25�� 21-344 (������, ��������������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('tomato','$2a$10$ETtvzWzCyr883RAXwLnMWuL6hxwX4VAuzqxmwei3Qa37xR983uYyG','Ȳ�丶��','2020-10-05','��','tomato@google.com','010-3455-8745','01015���� ���ϱ� 4.19��13�� 44 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('tyrfd','$2a$10$DMoP1nmk4Ixvm6cFUKNnBucyxtQ1rN1qEIF8Ypny50dc/QSF.dV42','green','2023-08-02','��','dfg@naver.com','010-1234-4564','01016���� ���ϱ� 4.19��23�� 97 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('sdf','$2a$10$Q9xe8cVzpZbAb8L5e.DlTujqpYuC1tmChsM4Gwoq3bX7B1P89GLxu','green','2023-07-04','��','saf@daum.net','null-null-null','07619���� ������ ���״�� 1334 (���׵�)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('dfsd','$2a$10$ZtZxVZDuO9TKse8q1wVba.X/wPCCmZdh9BU0ZWgHZR5MOLQISN2Hm','Ȳ����','2023-08-02','��','12345@naver.com','010-1234-6664','46709�λ� ������ ������234���� 35sdf (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('monkey','$2a$10$OUL4pHQv6GJ.cjCr3ZkceuhOpvhzW.9z5WE67zkcoG.5ZwBpLxd3W','������','2023-05-09','��','monkey1234@naver.com','010-1245-8595','06378���� ������ �����23�� 4124 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('mz','$2a$10$j0ZHbOTByUtOCFVpRi09OuR0tixNnHYX35ZeaRtNbUkjgGPnInS1m','����Ʈ','2023-08-10','��','mz@naver.com','010-1234-4421','52213�泲 ��û�� ��û�� ����ô����453���� 71234 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('mz1234','$2a$10$pfNw6nv0OGKGrICMfXz2l.Nk6gfwviNMi22pb3mMLrSTtFJ2Du0Me','Ȳ��Ʈ','2023-08-10','��','mz1234@google.com','052-234-2325','01027���� ���ϱ� ����123���� 13234 ','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('mmzz','$2a$10$VuJh7pxYwFofNvYQeCMThO0J1525II4HzGznI0oH4WPcGB9vFEFEW','mmzz','2023-09-19','��','mmzz@naver.com','010-1233-4532','31104�泲 õ�Ƚ� ���ϱ� 1����3�� 1234 (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('e','$2a$10$mIT9v1qN4i5ZRPyXk9a1Euo.ls5jbDMdwPY4H6qOByatX1GTSHCMm','e','2023-09-13','��','e@google.com','010-2222-3333','01014���� ���ϱ� 4.19��11�� 84 (������, �¸�׺�����)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('aaa','$2a$10$7dVOilc136LkbCn5yRYYzu5yFjkzPHj5.u2ngrzWfbaeQFdZcrYpm','��׸�','2023-05-31','��','mmm@google.com','010-7542-2345','05693���� ���ı� ������ 212 (���̵�)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('BBB','$2a$10$EEiuIFzXdhs88dMB6SumAeaC0hd3BCssPb.1U5FPndVqT00j.VrDm','����','2023-08-01','��','pppp@daum.net','010-9999-7777','02830���� ���ϱ� �Ƹ����� 3123 (���ҹ���6��)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('CCC','$2a$10$VeCJe/0iZqhHuBBcqGj16uFmF8BnCO25SIyFzX.YDhOcv2FHe0gfS','Ȳ���','2023-06-07','��','ttt@daum.net','010-7888-9999','07344���� �������� 63�� 7888 (���ǵ���, ���Ͼ���Ʈ)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('t','$2a$10$f5IP/mCDL5fcFCkXysAJfesPJb6xaujaXFbJZP1iA2oPUgFwAvsCC','ttt','2023-08-16','��','tyhuu@naver.com','010-1234-0000','61900���� ���� 2��ȯ�� 2330222 (���ﵿ)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('1111','$2a$10$aaixbYLce9luc6BmQtPPru1LotVXdiGKUu43xr4hiDYuKQU/RwDu2','Ȳ����','2023-08-02','��','sdsf@naver.com','010-9535-0000','01014���� ���ϱ� 4.19��11�� 7rrrr (������)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('6666','$2a$10$/PW8KRzhfJWweAObFhk5suG.OPjfL2IlUPZLEDTmN6ZF/GIlyMziO','6666','2023-08-01','��','������@google.com','02-4785-7889','01014���� ���ϱ� 4.19��11�� 8-91111 (������, ������Ʈ����)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('hes','$2a$10$dz0oxl0u45Zfe1CwUElKiuOfoQfrCfDPWblOPmY0HzhdUwvddXPme','������','2016-06-07','��','hes@daum.net','010-3345-3423','01056���� ���ϱ� ������96�� 5-612 (����)','1');
Insert into HESSPRING.MEMBER (ID,PASSWD,NAME,BIRTH,GENDER,EMAIL,PHONE,ADDRESS,ENABLED) values ('qwemnb','$2a$10$GwevClMA2dgClr1aNRxxleaYZNXXBIpK2ebrETL5a7899NE1YhrzK','Ȳqwe','2023-08-01','��','qwemnb@daum.net','010-2346-8765','01092���� ���ϱ� �μ�����56�� 18-454 (������, �ѽź���Ʈ)','1');
REM INSERTING into HESSPRING.MEMBER_AUTH
SET DEFINE OFF;
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('hi','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('hi0409','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('�ȳ��ϼ���','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('n','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('7','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('f','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('77','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('GGG','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('uuuu','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('lll','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('7777','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('888','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('p','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('DDD','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('shotttttt','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('XXX','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('KK','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('UUU','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('1234','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('99','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('qwe','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('red','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('pink','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('tomato','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('tyrfd','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('sdf','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('dfsd','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('monkey','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('mz','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('mz1234','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('mmzz','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('e','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('aaa','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('BBB','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('CCC','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('t','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('1111','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('6666','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('hes','ROLE_USER');
Insert into HESSPRING.MEMBER_AUTH (ID,AUTH) values ('qwemnb','ROLE_USER');
REM INSERTING into HESSPRING.PERFORMANCE
SET DEFINE OFF;
Insert into HESSPRING.PERFORMANCE (NUM,PHOTO,SNAME,NAME,PERIOD,PTIME,VTIME,GRADE,PLACE,PRICE,FILENAME,UPLOADPATH,FULLNAME,ALT) values (16,'ccc.JPG','��ȹ','���� <���÷��׵�>','2023.10.11 ~ 2023.10.25','14:00/18:00','90��','�ʵ��л��̻� ���尡��','�������','69,000��','ccc.JPG','2023\09\11','2023%5C09%5C11%5Cs_565d0b21-84ff-47e7-b4ee-ada7318fe825_ccc.JPG','���� <���÷��׵�>');
Insert into HESSPRING.PERFORMANCE (NUM,PHOTO,SNAME,NAME,PERIOD,PTIME,VTIME,GRADE,PLACE,PRICE,FILENAME,UPLOADPATH,FULLNAME,ALT) values (14,'aaa.jpg','��ȹ','2023�� ���� <ģ�������� 2�� 3��>','2023.09.16 ~ 2023.09.30','14:00/18:00','100��','�ʵ��л��̻� ���尡��','�������','77,000��','aaa.jpg','2023\09\11','2023%5C09%5C11%5Cs_f8b6c68c-3b97-4925-bb56-5ad7f244f325_aaa.jpg','2023�� ���� <ģ�������� 2�� 3��>');
REM INSERTING into HESSPRING.PERSISTENT_LOGINS
SET DEFINE OFF;
Insert into HESSPRING.PERSISTENT_LOGINS (USERNAME,SERIES,TOKEN,LAST_USED) values ('77','OsyBgaVvoPPssg/7ji2lgA==','xEyO/lw8NcZB3GB47CJQeQ==',to_timestamp('23/08/14 17:33:10.510000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into HESSPRING.PERSISTENT_LOGINS (USERNAME,SERIES,TOKEN,LAST_USED) values ('99','+jQJiPBPO7wOP+LDauK1XA==','7RbmeBcxoZEDC/AVRfXtcQ==',to_timestamp('23/08/14 15:40:42.050000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into HESSPRING.RESERVATION
SET DEFINE OFF;
Insert into HESSPRING.RESERVATION (NUM,RNUM,ID,PHOTO,NAME,VIEWDAY,VIEWDAY2,PEOPLENUM,SEATNUM,VTIME,PAYCD,PRICE,TOTAL,FILENAME,UPLOADPATH,FULLNAME,ALT) values (16,1,'XXX','ccc.JPG','���� <���÷��׵�>','2023��10��11�� ������','18:00(�������)','�ο��� : 2��','11, 15','90��','�ǽð�������ü','69,000��','138000','ccc.JPG','2023\09\11','2023%5C09%5C11%5Cs_565d0b21-84ff-47e7-b4ee-ada7318fe825_ccc.JPG','���� <���÷��׵�>');
Insert into HESSPRING.RESERVATION (NUM,RNUM,ID,PHOTO,NAME,VIEWDAY,VIEWDAY2,PEOPLENUM,SEATNUM,VTIME,PAYCD,PRICE,TOTAL,FILENAME,UPLOADPATH,FULLNAME,ALT) values (14,2,'XXX','aaa.jpg','2023�� ���� <ģ�������� 2�� 3��>','2023��09��30�� �����','18:00(�������)','�ο��� : 2��','2, 13','100��','�ǽð�������ü','77,000��','154000','aaa.jpg','2023\09\11','2023%5C09%5C11%5Cs_f8b6c68c-3b97-4925-bb56-5ad7f244f325_aaa.jpg','2023�� ���� <ģ�������� 2�� 3��>');
--------------------------------------------------------
--  DDL for Index SYS_C0010018
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C0010018" ON "HESSPRING"."PERFORMANCE" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010087
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C0010087" ON "HESSPRING"."RESERVATION" ("RNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007427
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C007427" ON "HESSPRING"."MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007434
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C007434" ON "HESSPRING"."PERSISTENT_LOGINS" ("SERIES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007438
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C007438" ON "HESSPRING"."BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007480
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C007480" ON "HESSPRING"."GALLERYBOARD" ("GNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007438
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C007438" ON "HESSPRING"."BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007480
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C007480" ON "HESSPRING"."GALLERYBOARD" ("GNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007427
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C007427" ON "HESSPRING"."MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010018
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C0010018" ON "HESSPRING"."PERFORMANCE" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007434
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C007434" ON "HESSPRING"."PERSISTENT_LOGINS" ("SERIES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0010087
--------------------------------------------------------

  CREATE UNIQUE INDEX "HESSPRING"."SYS_C0010087" ON "HESSPRING"."RESERVATION" ("RNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."BOARD" ADD PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HESSPRING"."BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GALLERYBOARD
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."GALLERYBOARD" ADD PRIMARY KEY ("GNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HESSPRING"."GALLERYBOARD" MODIFY ("UPLOADPATH" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."GALLERYBOARD" MODIFY ("FILENAME" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."GALLERYBOARD" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."GALLERYBOARD" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."MEMBER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HESSPRING"."MEMBER" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."MEMBER" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."MEMBER" MODIFY ("PASSWD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER_AUTH
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."MEMBER_AUTH" MODIFY ("AUTH" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."MEMBER_AUTH" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERFORMANCE
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."PERFORMANCE" ADD PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("ALT" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("PLACE" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("GRADE" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("VTIME" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("PTIME" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("PERIOD" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERFORMANCE" MODIFY ("SNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSISTENT_LOGINS
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."PERSISTENT_LOGINS" ADD PRIMARY KEY ("SERIES")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HESSPRING"."PERSISTENT_LOGINS" MODIFY ("LAST_USED" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERSISTENT_LOGINS" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."PERSISTENT_LOGINS" MODIFY ("USERNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."RESERVATION" ADD PRIMARY KEY ("RNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("ALT" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("TOTAL" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("PAYCD" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("VTIME" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("SEATNUM" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("PEOPLENUM" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("VIEWDAY2" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("VIEWDAY" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HESSPRING"."RESERVATION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table MEMBER_AUTH
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."MEMBER_AUTH" ADD CONSTRAINT "FK_MEMBER_AUTH" FOREIGN KEY ("ID")
	  REFERENCES "HESSPRING"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "HESSPRING"."RESERVATION" ADD FOREIGN KEY ("NUM")
	  REFERENCES "HESSPRING"."PERFORMANCE" ("NUM") ENABLE;
