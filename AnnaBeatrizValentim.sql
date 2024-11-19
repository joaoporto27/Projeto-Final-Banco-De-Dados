CREATE TABLE sobrenos (
    id_sobrenos SERIAL PRIMARY KEY,
    nomeParticipante VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    idade INTEGER NOT NULL
)

INSERT INTO sobrenos (nomeParticipante, descricao, idade) VALUES 
('Ana Julia Demattei', 'Desenvolvedora', 16),
('Anna Beatriz Ribeiro Valentim', 'Desenvolvedora', 16),
('Bernardo Gabriel de Moraes Marques', 'Desenvolvedor', 16),
('Isabella Borin de Moraes Rosa', 'Scrum Master', 16),
('João Vitor Porto Sales', 'Product Owner', 16);