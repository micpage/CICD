--liquibase formatted sql

--changeset book.master:2
CREATE TABLE TA_AUTHORS( 
  AUTHOR_ID   INT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
  FIRST_NAME  VARCHAR(100) NOT NULL, 
  MIDDLE_NAME VARCHAR(50) NULL, 
  LAST_NAME   VARCHAR(100) NULL
);

CREATE UNIQUE INDEX XPKTA_AUTHORS ON TA_AUTHORS (AUTHOR_ID);

ALTER TABLE TA_AUTHORS ADD CONSTRAINT XPKTA_AUTHORS PRIMARY KEY (AUTHOR_ID);

CALL SYSPROC.ADMIN_CMD ( 'RUNSTATS ON TABLE TA_AUTHORS ON ALL COLUMNS SET PROFILE' );
