USE [BANK]
GO

CREATE TABLE PERSONA_JURIDICA (
    UUID INT REFERENCES PERSONA(UUID),
    NOMBRE NVARCHAR(200) NOT NULL,
    CONSTRAINT PK_PERSONA_JURIDICA PRIMARY KEY (UUID)
)
GO

INSERT INTO PERSONA_JURIDICA VALUES (41,'Great Red Spot Services');
INSERT INTO PERSONA_JURIDICA VALUES (42,'Jumping Blimp Works');
INSERT INTO PERSONA_JURIDICA VALUES (43,'Asylum');
INSERT INTO PERSONA_JURIDICA VALUES (44,'Halfpint');
INSERT INTO PERSONA_JURIDICA VALUES (45,'Trinidad');
INSERT INTO PERSONA_JURIDICA VALUES (46,'Onyx');
INSERT INTO PERSONA_JURIDICA VALUES (47,'Soar Mix');
INSERT INTO PERSONA_JURIDICA VALUES (48,'Coolio Inc');
INSERT INTO PERSONA_JURIDICA VALUES (49,'Once-Over Flux');
INSERT INTO PERSONA_JURIDICA VALUES (50,'Peeps Systems');