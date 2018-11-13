create table if not exists Tweet(
  ID int NOT NULL AUTO_INCREMENT,
  USER_ID nvarchar(60),
  URL nvarchar(250),
  PROCESSED Boolean,
  CONTENT nvarchar(700),
  SUBMISSION_DATE datetime,
  PROCESS_DATE datetime,
  index PROCESS_DATE_IDX using BTREE (PROCESS_DATE),
  PRIMARY KEY (ID)
);

create or replace view Tweet_Vw as SELECT * FROM Tweet where PROCESS_DATE < now(); -- and PROCESSED is False;

create table if not exists Tweet_BK(
  ID int NOT NULL AUTO_INCREMENT,
  USER_ID nvarchar(60),
  URL nvarchar(250),
  CONTENT nvarchar(700),
  SUBMISSION_DATE datetime,
  PROCESS_DATE datetime,
  index PROCESS_DATE_IDX using BTREE (PROCESS_DATE),
  PRIMARY KEY (ID)
);
