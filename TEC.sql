CREATE DATABASE TEC;
CREATE TABLE elev(
    elev_id VARCHAR(100) PRIMARY KEY,
    fornavn VARCHAR(100),
    efternavn VARCHAR(100),
    adresse VARCHAR(100),
    post_nr VARCHAR(100),
    CONSTRAINT fk_post_nr FOREIGN KEY (post_nr) REFERENCES post_nr_by(post_nr),
);


CREATE TABLE post_nr_by(
    post_nr VARCHAR(100) PRIMARY KEY,
    by_navn VARCHAR(100),
);

CREATE TABLE laerer(
    laerer_id VARCHAR(100) PRIMARY KEY,
    fornavn VARCHAR(100),
    efternavn VARCHAR(100),
    adresse VARCHAR(100),
    post_nr VARCHAR(100),
    CONSTRAINT fk_post_nr FOREIGN KEY (post_nr) REFERENCES post_nr_by(post_nr),
);

CREATE TABLE klasse(
    klasse_id VARCHAR(100) PRIMARY KEY,
    klass VARCHAR(100)
);


INSERT INTO elev VALUES
('1', 'Bo Andersen', 'Gammel Byvej 12 2650'),
('2', 'Frederikke Hansen', 'Amager Boulevard 5 2300'),
('3', 'Jens Mikkelsen', 'Lily Brobergs Vej 17 2500'),
('4', 'Philip Mortensen', 'Brunevang 90 2610'),
('5', 'Kasper Frederiksen', 'Bryggertorvet 32 3650'),
('6', 'Milla Jørgensen', 'Virum Torv 25 2830'),
('7', 'Fie Kudsen', 'Allen 85 2770'),
('8', 'Henrik Madsen', 'Lily Brobergs Vej 53 2500');


INSERT INTO laerer VALUES
('1', 'Tom It', 'Sankt Thomas Alle 3 1824'),
('2', 'Lars Henriksen', 'Nissedalen 76 2740'),
('3', 'Mia Hansen', 'Østervej 16 2750');


INSERT INTO klasse VALUES
('1', '1A'),
('2', '9B'),
('3', '4D');

SELECT * FROM elev
JOIN post_nr_by ON elev.post_nr = post_nr_by.post_nr
JOIN laerer ON elev.post_nr = laerer.post_nr
JOIN klasse ON elev.elev_id = klasse.klasse_id;