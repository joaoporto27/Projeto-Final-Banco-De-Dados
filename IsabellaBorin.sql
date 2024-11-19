CREATE TABLE carreiras (
    id_carreira SERIAL PRIMARY KEY,
    carreira VARCHAR(100) NOT NULL,
    descricao_carreira TEXT NOT NULL
);

INSERT INTO carreiras (carreira, descricao_carreira) 
VALUES 
('Docência', 'Engloba as diversas possibilidades da educação de jovens e adultos, nas redes pública e privada.'),
('Pesquisa e carreira acadêmica', 'O pesquisadores acadêmicos na área de Filosofia desenvolvem pesquisas que ampliam os conhecimentos filosóficos e científicos.'),
('Colunista e crítico em veículos de comunicação.', 'No campo da filosofia um desses trabalhos é como colunista em veículos de comunicação, como jornais, revistas, rádio, TV e websites, explorando as mais diversas temáticas.'),
('Setor público e ONGs', 'Trabalhar no setor público, inclinado para as ciências sociais e políticas, e também com projetos sociais em ONGs, com foco em mudar as realidades sociais.'),
('Mercado editorial', 'No mercado editorial, os filósofos são contratados para trabalhar com redação, como escritores. Observamos haver vários profissionais publicam livros, resultados de suas pesquisas.'),
('Políticas públicas', 'O filósofo que trabalha com políticas públicas ajuda a guiar as mudanças na sociedade, para que seja criada uma sociedade mais justa.');