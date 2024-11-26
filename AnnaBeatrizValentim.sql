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