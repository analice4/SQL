CREATE TABLE genero_dos_jogos (
    id_genero INTEGER PRIMARY KEY NOT NULL,
    nome_genero VARCHAR(50) NOT NULL
);

INSERT INTO genero_dos_jogos VALUES (
    1,
    'ação'
);
INSERT INTO genero_dos_jogos VALUES (
    2,
    'terror'
);
INSERT INTO genero_dos_jogos VALUES (
    3,
    'ficção cientifica'
);
INSERT INTO genero_dos_jogos VALUES (
    4,
    'suspense'
);

CREATE TABLE jogos (
    id_jogo INTEGER PRIMARY KEY NOT NULL,
    nome_jogo VARCHAR(50) NOT NULL,
    desenvolvedora_jogo VARCHAR(50) NOT NULL,
    ano_jogo FLOAT NOT NULL,
    id_genero INTEGER,
    FOREIGN KEY (id_genero) REFERENCES genero_dos_jogos (id_genero)
);
    
INSERT INTO jogos VALUES (
    1,
    'the last of us',
    'Naughty Dog',
    '2013',
    1
);

INSERT INTO jogos VALUES (
    2,
    'pacify',
    'SKH Apps, SKH Apps, LLC',
    '2019',
    2
);

INSERT INTO jogos VALUES (
    3,
    'elden ring',
    'FromSoftware, FromSoftware Inc.',
    '2022',
    1
);

INSERT INTO jogos VALUES (
    4,
    'detroit become human',
    'Quantic Dream',
    '2018',
    3
);

INSERT INTO jogos VALUES (
    5,
    'alien:isolation',
    'Creative Assembly, Feral Interactive',
    '2014',
    4
);

INSERT INTO jogos VALUES (
    6,
    'Devour',
    'SitBack Games',
    '2021',
    2
);

INSERT INTO jogos VALUES (
    7,
    'visage',
    'SadSquare Studio',
    '2018',
    4
);    

select * from jogos WHERE nome_jogo like '%last%';

