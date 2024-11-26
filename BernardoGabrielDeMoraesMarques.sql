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

INSERT INTO autores (nome, profissao) VALUES
('Bernardo Marques', 'Estudante'),
('Nivaldo Pereira', 'Professor de filosofia')

INSERT INTO videos  (titulo, descricao, url_video, id_autor) VALUES
('Carreira e sua vida', 'Nesse vídeo, iremos tratar sobre a trajetória profissional em que o professor percorreu, além como a filosofia moldou sua visão de mundo e a importância do ensino e da reflexão crítica.No video ele compartilha momentos de sua carreira e como a filosofia ajudou a enfrentar desafios pessoais e mudou sua perspectiva de vida.', 'video1', 2)
('Dicas de estudos', 'Nesse vídeo, iremos tratar sobre algumas dicas de estudo para você entrar de cabeça no mundo da filosofia, o professor recomendou alguns livros e series para que sua trajetória seja mais descontraída e que você possa se sentir mais confortável e seguro na sua jornada.', 'video2', 2)
('Filosofia na sociedade atual', 'Nesse vídeo, iremos tratar sobre como a filosofia pode nos ajudar dentro da sociedade atual e como lidar com situações diárias, além disso o professor indicou alguns pensadores atuais e antigas para que podemos estudar e refletir sobre suas ideias e como encaixa-las em nosso cotidiano.', 'video3', 2)