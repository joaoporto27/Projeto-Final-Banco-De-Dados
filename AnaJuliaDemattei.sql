CREATE TABLE cardDicas (
id SERIAL PRIMARY KEY,
titulo VARCHAR(50),
subtitulo VARCHAR(100),
descricao VARCHAR(1500),
imgDicas VARCHAR(300)
);

INSERT INTO dicas (imgDicas, titulo, subtitulo, descricao)
VALUES
('https://site-filosofia.vercel.app/img/dica1.png','Dica 01', 'Conheça os assuntos que mais caem nas provas que irá prestar!', 'Ter conhecimento do que vai cair nas provas que você vai prestar é importante porque ajuda a focar no conteúdo necessário, permitindo que você se prepare de forma mais eficiente. Isso otimiza o tempo de estudo, evita distrações com temas irrelevantes, já que você se concentra nas exigências específicas da prova.'),
('https://site-filosofia.vercel.app/img/dica2.png','Dica 02', 'Anote suas dúvidas', 'É importante não deixar detalhes que podem ser importantes para o seu aprendizado passarem. Então separe um caderno para anotar suas dúvidas durante a realização de alguma questão ou leitura de um texto de forma que depois possa tirar essas dúvidas com um professor ou de maneira autônoma.'),
('https://site-filosofia.vercel.app/img/dica3.png','Dica 03', 'Treine com questões de provas anteriores', 'Para aprofundar seus conhecimentos é importante realizar exercícios que fornecerão a você a oportunidade de explorar as ideias e as contribuições dos filósofos ajudando-o a aprimorar seu conhecimento e verificar se, na prática, o conteúdo foi realmente absorvido.'),
('https://site-filosofia.vercel.app/img/dica4.png','Dica 04', 'Faça resumos', 'Uma ótima estratégia durante os estudos é fazer anotações sobre os conteúdos vistos, anotar você consegue fixar a matéria e compreender melhor os assuntos, além de ter um material resumido sobre os assunto vistos, o que facilita a revisão.'),
('https://site-filosofia.vercel.app/img/dica5.png','Dica 05', 'Escolha um bom local de estudo', 'É essencial que você procure um espaço adequado para melhorar seu desempenho, ter um ambiente com boa iluminação, calmo, silencioso e sem outras pessoas, a fim de evitar interrupções desnecessárias é imprescindível.'),
('https://site-filosofia.vercel.app/img/dica6.png','Dica 06', 'Faça conexões com outros filósofos', 'Filósofos dialogam entre si para concordar ou criticar o pensamento do outro, então fazer conexões entre esses pensamentos é necessário para melhorar o entendimento.'),
('https://site-filosofia.vercel.app/img/dica7.png','Dica 07', 'Esteja preparado para interpretações de texto', 'É importante ter um conhecimento prévio de todos os assuntos, porém na área de Ciências Humanas conseguimos eliminar algumas alternativas ou desenvolver raciocínios com base na interpretação ou intertextualidade.'),
('https://site-filosofia.vercel.app/img/dica8.png','Dica 08', 'Faça um paralelo entre as teorias filosóficas e a nossa realidade', 'Muitos vestibulares costumam pensar em questões que sejam aplicáveis à nossa realidade. Portanto, pensar dessa forma facilitará com que você enxergue a filosofia como algo próximo do que vivemos e não algo distante e teórico como muitas vezes é visto.'),
('https://site-filosofia.vercel.app/img/dica9.png','Dica 09', 'Entenda o contexto histórico', 'A filosofia está presente desde o surgimento da história, então entender o período, as questões sociais e os debates em que o filósofo estava envolvido ajuda a compreender melhor suas ideias.'),
('https://site-filosofia.vercel.app/img/dica10.png','Dica 10', 'Questione e reflita', 'Muito da filosofia é sobre questionamento. Portanto, pergunte-se constantemente: “Por que o autor diz isso?”, “Concordo com isso?”, “Quais são as implicações dessa ideia?” Esse processo de reflexão crítica é fundamental para um estudo filosófico eficaz.');
