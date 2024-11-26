create table videos {
    id_video SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT NOT NULL,
    url_video VARCHAR(150) NOT NULL
    id_autor INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
}

create table autores (
    id_autor SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    profissao VARCHAR(100) NOT NULL,
)

