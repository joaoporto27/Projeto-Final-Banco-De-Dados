CREATE TABLE sobrenos (
    id_sobrenos SERIAL PRIMARY KEY,
    fotoParticipante VARCHAR(255) NOT NULL,
    nomeParticipante VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    idade INTEGER NOT NULL
)

INSERT INTO sobrenos (nomeParticipante, descricao, idade, fotoParticipante) VALUES 
('Ana Julia Demattei', 'Desenvolvedora', 16, 'https://site-filosofia.vercel.app/img/AnaJulia.png'),
('Anna Beatriz Ribeiro Valentim', 'Desenvolvedora', 16, 'https://site-filosofia.vercel.app/img/AnnaValentim.png'),
('Bernardo Gabriel de Moraes Marques', 'Desenvolvedor', 16, 'https://site-filosofia.vercel.app/img/Bernardo.png'),
('Isabella Borin de Moraes Rosa', 'Scrum Master', 16,'https://site-filosofia.vercel.app/img/Isabella.png'),
('João Vitor Porto Sales', 'Product Owner', 16, 'https://site-filosofia.vercel.app/img/Jo%C3%A3oPortoSales.png');

CREATE TABLE simulados (
    id_simulado SERIAL PRIMARY KEY,
    nome_simulado VARCHAR(250) NOT NULL,
    imagem VARCHAR(255) NOT NULL
);


INSERT INTO simulados (nome_simulado, imagem) VALUES
('Filosofia Antiga', 'https://site-filosofia.vercel.app/img/simulado01.png'),
('Filosofia Moderna', 'https://site-filosofia.vercel.app/img/simulado03.png'),
('Filosofia Medieval', 'https://site-filosofia.vercel.app/img/simulado02.png'),
('Filosofia Contemporânea', 'https://site-filosofia.vercel.app/img/simulado04.png');

<-- Conteúdo feito junto com a Isabella -->

CREATE TABLE questoes (
    id_questao SERIAL PRIMARY KEY,
    id_simulado INTEGER NOT NULL,
    numero_questao INTEGER NOT NULL,
    alternativa_a BOOLEAN NOT NULL,
    alternativa_b BOOLEAN NOT NULL,
    alternativa_c BOOLEAN NOT NULL,
    alternativa_d BOOLEAN NOT NULL,
    alternativa_e BOOLEAN NOT NULL,
    CONSTRAINT fk_simulado  FOREIGN KEY (id_simulado) REFERENCES simulados(id_simulado)
);

INSERT INTO questoes (id_simulado, numero_questao, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e)
VALUES
(3, 1, false, false, true, false, false, 'C'),
(3, 2, true, false, false, false, false, 'A'),
(3, 3, false, false, false, false, true, 'E'),
(3, 4, true, false, false, false, false, 'A'),
(3, 5, false, true, false, false, false, 'B'),
(3, 6, true, false, false, false, false, 'A'),
(3, 7, false, false, false, true, false, 'D'),
(3, 8, false, true, false, false, false, 'B'),
(3, 9, false, true, false, false, false, 'B'),
(3, 10, false, true, false, false, false, 'B'),
(3, 11, false, false, true, false, false, 'C'),
(3, 12, false, true, false, false, false, 'B'),
(3, 13, false, false, false, false, true, 'E'),
(3, 14, false, false, true, false, false, 'C');


INSERT INTO questoes (id_simulado, numero_questao, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e)
VALUES
(4, 1, false, false, true, false, false, 'C'),
(4, 2, false, true, false, false, false, 'B'),
(4, 3, false, false, true, false, false, 'C'),
(4, 3, false, false, false, true, false, 'D'),
(4, 5, false, false, false, false, true, 'E'),
(4, 6, false, false, false, false, true, 'E'),
(4, 7, false, false, false, true, false, 'D'),
(4, 8, false, false, false, true, false, 'D'),
(4, 9, false, true, false, false, false, 'B'),
(4, 10, true, false, false, false, false, 'A'),
(4, 11, false, false, false, true, false, 'D'),
(4, 12, true, false, false, false, false, 'A'),
(4, 13, false, true, false, false, false, 'B'),
(4, 14, false, false, true, false, false, 'C');