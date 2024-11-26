CREATE TABLE sobrenos (
    id_sobrenos SERIAL PRIMARY KEY,
    foto_participante VARCHAR(255) NOT NULL,
    nomeParticipante VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    idade INTEGER NOT NULL
)

INSERT INTO sobrenos (nomeParticipante, descricao, idade, foto_participante) VALUES 
('Ana Julia Demattei', 'Desenvolvedora', 16, '../img/AnaJulia.png'),
('Anna Beatriz Ribeiro Valentim', 'Desenvolvedora', 16, '../img/AnnaValentim.png'),
('Bernardo Gabriel de Moraes Marques', 'Desenvolvedor', 16, '../img/Bernardo.png'),
('Isabella Borin de Moraes Rosa', 'Scrum Master', 16,'../img/Isabella.png'),
('João Vitor Porto Sales', 'Product Owner', 16, '../img/JoãoPortoSales.png');