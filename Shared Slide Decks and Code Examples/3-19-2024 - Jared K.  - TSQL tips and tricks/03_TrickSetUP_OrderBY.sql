USE [SQLTNT];
GO

SET NOCOUNT ON;

DROP TABLE IF EXISTS CardDeck;

CREATE TABLE CardDeck
(

  [Card]                       [NVARCHAR](255) COLLATE SQL_Latin1_General_CP1_CI_AS            NOT NULL

) ON [PRIMARY];

INSERT CardDeck
VALUES ('02 of SPADES'),   ('03 of SPADES'),   ('04 of SPADES'),   ('05 of SPADES'),     ('06 of SPADES'),      ('07 of SPADES'), 
       ('08 of SPADES'),   ('09 of SPADES'),   ('10 of SPADES'),   ('JACK of SPADES'),   ('QWEEN of SPADES'),   ('KING of SPADES'),   ('ACE of SPADES'),
	   ('02 of HEARTS'),   ('03 of HEARTS'),   ('04 of HEARTS'),   ('05 of HEARTS'),     ('06 of HEARTS'),      ('07 of HEARTS'), 
       ('08 of HEARTS'),   ('09 of HEARTS'),   ('10 of HEARTS'),   ('JACK of HEARTS'),   ('QWEEN of HEARTS'),   ('KING of HEARTS'),   ('ACE of HEARTS'),
       ('02 of CLUBS'),    ('03 of CLUBS'),    ('04 of CLUBS'),    ('05 of CLUBS'),      ('06 of CLUBS'),       ('07 of CLUBS'), 
       ('08 of CLUBS'),    ('09 of CLUBS'),    ('10 of CLUBS'),    ('JACK of CLUBS'),    ('QWEEN of CLUBS'),    ('KING of CLUBS'),    ('ACE of CLUBS'),
	   ('02 of DIAMONDS'), ('03 of DIAMONDS'), ('04 of DIAMONDS'), ('05 of DIAMONDS'),   ('06 of DIAMONDS'),    ('07 of DIAMONDS'), 
       ('08 of DIAMONDS'), ('09 of DIAMONDS'), ('10 of DIAMONDS'), ('JACK of DIAMONDS'), ('QWEEN of DIAMONDS'), ('KING of DIAMONDS'), ('ACE of DIAMONDS');

SELECT [Card]
  FROM [CardDeck];

SELECT TOP 5 [Card]
  FROM [CardDeck]
 ORDER BY NEWID();