CREATE TABLE carreiras (
    id_carreira SERIAL PRIMARY KEY,
    carreira VARCHAR(100) NOT NULL,
    url_imagem VARCHAR(255) NOT NULL,
    descricao_carreira TEXT NOT NULL
);

INSERT INTO carreiras (carreira, url_imagem, descricao_carreira) 
VALUES 
('Mercado editorial', 'https://site-filosofia.vercel.app/img/mercado%20editorial.png', 'No mercado editorial, os filósofos são contratados para trabalhar com redação, como escritores. Observamos haver vários profissionais publicam livros, resultados de suas pesquisas.'),
('Políticas públicas', 'https://site-filosofia.vercel.app/img/politica%20publicas.png', 'O filósofo que trabalha com políticas públicas ajuda a guiar as mudanças na sociedade, para que seja criada uma sociedade mais justa.');
('Setor público e ONGs', 'https://site-filosofia.vercel.app/img/setorpublicoeongs.png', 'Trabalhar no setor público, inclinado para as ciências sociais e políticas, e também com projetos sociais em ONGs, com foco em mudar as realidades sociais.'),
('Docência', 'https://site-filosofia.vercel.app/img/professorcarreiras.png', 'Engloba as diversas possibilidades da educação de jovens e adultos, nas redes pública e privada.'),
('Pesquisa e carreira acadêmica', 'https://site-filosofia.vercel.app/img/academico.png', 'O pesquisadores acadêmicos na área de Filosofia desenvolvem pesquisas que ampliam os conhecimentos filosóficos e científicos.'),
('Colunista e crítico em veículos de comunicação.', 'https://site-filosofia.vercel.app/img/m%C3%ADdias.png', 'No campo da filosofia um desses trabalhos é como colunista em veículos de comunicação, como jornais, revistas, rádio, TV e websites, explorando as mais diversas temáticas.');

<-- Conteúdo feito junto com  a Anna Beatriz Valentim --->

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

CREATE TABLE questoes (
    id_questao SERIAL PRIMARY KEY,
    id_simulado INTEGER NOT NULL,
    numero_questao INTEGER NOT NULL,
    alternativa_a BOOLEAN NOT NULL,
    alternativa_b BOOLEAN NOT NULL,
    alternativa_c BOOLEAN NOT NULL,
    alternativa_d BOOLEAN NOT NULL,
    alternativa_e BOOLEAN NOT NULL,
    resposta_correta VARCHAR(1) NOT NULL,
    CONSTRAINT fk_simulado  FOREIGN KEY (id_simulado) REFERENCES simulados(id_simulado)
);

INSERT INTO questoes (id_simulado, numero_questao, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta)
VALUES
(1, 1, false, true, false, false, false, 'b'),
(1, 2, false, false, false, true, false, 'd'),
(1, 3, false, true, false, false, false, 'b'),
(1, 4, false, false, false, true, false, 'd'),

(1, 5, false, false, true, false, false, 'c'),
(1, 6, false, false, true, false, false, 'c'),
(1, 7, false, false, true, false, false, 'c'),
(1, 8, true, false, false, false, false, 'a'),
(1, 9, false, true, false, false, false, 'b'),
(1, 10, false, true, false, false, false, 'b'),
(1, 11, false, false, true, false, false, 'c'),
(1, 12, false, false, true, false, false, 'c'),
(1, 13, false, true, false, false, false, 'b'),
(1, 14, true, false, false, false, false, 'a');


INSERT INTO questoes (id_simulado, numero_questao, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta)
VALUES
(2, 1, false, true, false, false, false, 'b'),
(2, 2, true, false, false, false, false, 'a'),
(2, 3, true, false, false, false, false, 'a'),
(2, 4, false, true, false, false, false, 'b'),
(2, 5, false, true, false, false, false, 'b'),
(2, 6, false, false, true, false, false, 'c');




