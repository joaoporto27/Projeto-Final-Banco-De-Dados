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

CREATE TABLE filosofiaAntiga(
    id_questao SERIAL PRIMARY KEY,
    id_simulado INTEGER NOT NULL,
    questoes INTEGER NOT NULL,
    descricao TEXT NOT NULL,
    respostas_simulado VARCHAR(1) NOT NULL,
    CONSTRAINT fk_id_simulado FOREIGN KEY (id_simulado) REFERENCES simulados(id_simulado)
);

INSERT INTO simulados (nome_simulado, descricao, imagem) VALUES