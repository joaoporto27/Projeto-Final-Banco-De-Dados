CREATE TABLE sobrenos (
    id_sobrenos SERIAL PRIMARY KEY,
    nomeParticipante VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    idade INTEGER NOT NULL
)