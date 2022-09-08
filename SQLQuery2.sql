alter table news drop constraint PK__news__DF97D0F5BD6704CE
ALTER TABLE news DROP COLUMN nid;
alter table news add  nid int IDENTITY (1,1) PRIMARY KEY