CREATE DATABASE portalfilosofia;

\c portalfilosofia;

CREATE TABLE
    autor (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(200) NOT NULL,
        profissao VARCHAR(100) NOT NULL
    );

CREATE TABLE
    noticias (
        id SERIAL PRIMARY KEY,
        titulo VARCHAR(255) NOT NULL,
        descricao_conteudo TEXT NOT NULL,
        data_publicacao DATE NOT NULL,
        autor_id INT NOT NULL,
        CONSTRAINT fk_autor FOREIGN KEY (autor_id) REFERENCES autor (id) ON DELETE CASCADE
    );

CREATE TABLE
    noticias_imagens (
        id SERIAL PRIMARY KEY,
        noticia_id INT NOT NULL,
        url_imagem VARCHAR(255) NOT NULL,
        CONSTRAINT fk_noticia FOREIGN KEY (noticia_id) REFERENCES noticias (id) ON DELETE CASCADE
    );

INSERT INTO
    autor (nome, profissao)
VALUES
    ('Ana Julia de Pinheiro Demattei', 'Estudante'),
    ('Anna Beatriz Ribeiro Valentim', 'Estudante'),
    ('Bernardo Gabriel de Moraes Marques', 'Estudante'),
    ('Isabella Borin de Moraes Rosa', 'Estudante'),
    ('João Vitor Porto Sales', 'Estudante'),
    ('Nivaldo Pereira', 'Professor');

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        '5 ASSUNTOS DE FILOSOFIA PARA REVISAR DE ÚLTIMA HORA',
        'O Enem (Exame Nacional do Ensino Médio) é uma importante prova de acesso ao ensino superior no Brasil, cobrindo conteúdos do ensino médio e exigindo uma abordagem interdisciplinar. Na área de filosofia, temas frequentemente abordados incluem a Filosofia Antiga, com as reflexões de Sócrates, Platão e Aristóteles sobre ética, virtude e política; a Filosofia Moderna, que traz o racionalismo e o empirismo de pensadores como Descartes, Kant e Hume, focando no conhecimento e na razão; e questões sobre mal e justiça, discutidas por autores como Santo Agostinho e Kant, que exploram dilemas morais e normas sociais. Além disso, a Filosofia Política, com nomes como Maquiavel, Hobbes e Rousseau, trata de conceitos como Estado, governo e sociedade, e o Existencialismo, representado por Sartre e Simone de Beauvoir, analisa a liberdade individual e a responsabilidade pelas escolhas.',
        '2024-11-14',
        4
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'LIVRO BUSCA TRAÇAR UM RETRATO MAIS HUMANO DE SÓCRATES',
        'Sócrates, um filósofo ateniense condenado à morte pela corrupção da juventude e pelos hábitos burlescos, tornou-se uma figura exemplar de integridade filosófica. Rejeitando o exílio ou a fuga, enfrenta a morte com serenidade, coroando uma vida dedicada à busca do conhecimento e guiada pelo princípio ético de que é melhor sofrer uma injustiça do que cometê-la. Embora não tenha deixado escritos, sua figura é amplamente reconhecida através dos diálogos de Platão, que apresentam um Sócrates bastante argumentativo e filosófico, e através das obras de Xenofonte, que o representam de forma mais prática e acessível, oferecendo conselhos úteis ao cidadão comum. Essa dualidade complementa sua imagem de homem de pensamentos profundos e ações simples. Admirado pela coerência entre palavra e acção, Sócrates deixa na memória aquele que integrou vários aspectos da humanidade, seja no seu valor como soldado, seja na simplicidade do seu quotidiano, seja na tranquilidade com que aceitou o seu destino. Seu exemplo continua sendo um legado ético e filosófico que vai além das histórias de seus discípulos, reforçando a ideia de que a maior lição é viver de acordo com os princípios que defende.',
        '2024-11-26',
        4
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'A crítica de Sócrates ao consumo de carne',
        'Sócrates, um dos fundadores da filosofia ocidental, destacou-se pelos seus pensamentos no campo da ética e da epistemologia, e os seus pensamentos foram imortalizados nas obras de discípulos como Platão e Xenofonte. Na República, Platão apresenta Sócrates não apenas como um crítico da organização social e política, mas também como um homem atento aos problemas éticos relacionados com o consumo de carne e a exploração de animais. Na obra, Sócrates discute com Glauco as consequências do consumo de carne, associando-o ao surgimento de problemas de saúde e à crescente necessidade de médicos. Ele também critica práticas que endurecem a natureza dos animais, como a utilização de cães treinados para guardar rebanhos, ressaltando que tal comportamento pode alterar sua essência, tornando-os mais agressivos e brutais. Mais profundamente, Sócrates considera as implicações morais do abate de animais, questionando a humanidade de matar os seres com quem interagimos e conhecemos como indivíduos. Estas discussões revelam uma preocupação com o impacto das relações humanas com os animais na ética, na justiça e no caráter moral da própria sociedade.',
        '2024-11-26',
        4
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'Estudante do IFBA/CAMAÇARI conquista medalha de bronze na etapa nacional da Olimpíada de Filosofia',
        'Lucas Santos, aluno do curso técnico em engenharia elétrica do Instituto Federal da Bahia (IFBA), conquistou a medalha de bronze na Olimpíada Nacional de Filosofia (ONFIL), realizada em outubro em Santa Maria, no Rio Grande do Sul cinquenta estudantes de diferentes regiões do Brasil, desafiados a criar ensaios filosóficos avaliados pela profundidade, originalidade e força argumentativa. Na última rodada, no dia 18 de outubro, Lucas se destacou pela consistência e criatividade de pensamento, conquistando reconhecimento nacional como um dos melhores participantes da competição. Lucas descreveu a experiência como transformadora, enfatizando a importância da filosofia em sua vida e a importância de promover o pensamento crítico nos jovens: "Desde a primeira vez que ouvi falar de filosofia, ela ocupou um lugar especial em mim. Escrever apenas sobre suas ideias é algo que poucos jovens estão habituados a fazer e a participação no ONFIL foi enriquecida." Enfatizou também a alegria de conhecer pessoas de diferentes origens e o impacto das experiências compartilhadas durante o evento: "A maior experiência do ONFIL são as pessoas que conhecemos pelo caminho! Viva o ONFI, viva a Filosofia!" Seu sucesso e entusiasmo reforçam o valor do estudo filosófico na formação pessoal e educação.',
        '2024-11-14',
        2
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'ARISTÓTELES: NOVOS DETALHES SOBRE A VIDA DO FILÓSOFO DA ANTIGUIDADE',
        'Aristóteles, amplamente reconhecido como um dos maiores filósofos da história, continua a inspirar fascínio com novas descobertas que enriquecem a nossa compreensão da sua vida e obra. Discípulo de Platão e mentor de Alexandre, o Grande, foi um pensador cuja influência permeou campos como ética, política, biologia e lógica. Recentemente, manuscritos revelaram uma relação ainda mais significativa entre Aristóteles e Alexandre, mostrando que o filósofo não apenas deu conselhos de liderança, mas também enfatizou a importância da diversidade cultural nos territórios conquistados, favorecendo a unificação dos povos como objetivo ético e político. Nos últimos anos de sua vida, após ser acusado de desonestidade em Atenas, Aristóteles refugiou-se em Cálcis, onde continuou a revisar obras importantes como a Ética a Nicômaco, apesar dos problemas de saúde. Ao mesmo tempo, escavações no Liceu, a sua escola em Atenas, descobriram uma sala circular dedicada aos debates filosóficos, que destaca o seu característico método de ensino itinerante, baseado em diálogos e percursos. Estas descobertas reforçam a imagem de Aristóteles não apenas como um pensador extraordinário, mas também como um educador visionário que revolucionou a aprendizagem interdisciplinar. Seu legado, marcado pela busca incansável pelo conhecimento e pela integração de ideias, continua vivo, influenciando gerações e moldando o pensamento humano até hoje.',
        '2024-11-26',
        2
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'DESCOBERTAS INÉDITAS: PLATÃO E O ENIGMA DE SUA ESCRAVIDÃO',
        'Estudos recentes de um manuscrito antigo trouxeram à luz descobertas surpreendentes sobre a vida de Platão, o famoso filósofo grego, discípulo de Sócrates e mentor de Aristóteles. Embora se acredite que ele tenha sido vendido como escravo durante sua estada na Sicília em 387 a.C., novas evidências sugerem outras datas e locais para este episódio. Segundo estudos, Platão pode ter sido escravizado em 404 a.C., durante a conquista espartana da ilha de Egina, ou em 399 a.C., logo após a morte de seu professor Sócrates. Estas novas hipóteses lançam luz sobre um período menos conhecido da vida do filósofo e desafiam interpretações históricas anteriores. O manuscrito em papiro também descreve os últimos momentos de Platão, que morreu em Atenas por volta de 348 aC. Apesar da febre forte e à beira da morte, o filósofo continua com suas duras críticas. Diz-se que ele comentou ironicamente sobre as habilidades limitadas de um músico escravo trácio que tocava flauta em sua presença. O episódio destaca a personalidade exigente de Platão até os últimos momentos. A cena também é uma visão rara das interações diárias do filósofo, refletindo a importância cultural da música na Grécia antiga e as relações sociais da época.Outro ponto esclarecido pelo manuscrito é a localização exata do túmulo de Platão. Diz-se que o filósofo está enterrado num jardim privado da Academia, escola que fundou em Atenas. Este espaço, destinado à reflexão filosófica e dedicado às musas, era um local reservado e simbólico para a preservação do seu património. Até então, sabíamos apenas que ele estava sepultado na Academia, sem detalhes do local. Esta confirmação reforça a importância da Academia como centro de pensamento e espiritualidade no mundo antigo. Estas descobertas não só abrem novas perspectivas sobre a vida e a morte de Platão, mas também expandem a nossa compreensão da sociedade e cultura gregas do seu tempo. Mais do que nunca, o legado do filósofo continua a inspirar e intrigar estudiosos de todo o mundo.',
        '2024-11-26',
        2
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'Teoria das Ideias de Platão',
        'A teoria das ideias de Platão constitui um dos pilares fundamentais da filosofia ocidental, abordando questões fundamentais sobre a natureza do conhecimento e da realidade. Para Platão, o mundo sensível, acessível aos sentidos, é ilusório e transitório, enquanto o verdadeiro conhecimento reside num reino transcendente de ideias ou formas, os modelos perfeitos e imóveis de todas as coisas existentes. Esta visão surge da sua busca por uma explicação mais profunda da essência da realidade, inspirada nos ensinamentos de Sócrates e nas suas reflexões sobre os limites da percepção humana. A famosa alegoria da caverna ilustra esta teoria: os prisioneiros, limitados à observação da sombra projetada na parede, representam o homem limitado à percepção sensível. A libertação e a visão do sol, simbolizando a Idéia do Bem, indicam a ascensão ao verdadeiro conhecimento, acessível apenas pela razão. Assim, Platão afirmou que os objetos do mundo material são apenas cópias imperfeitas de ideias, que existem independentemente do mundo físico e só podem ser compreendidos por um esforço racional para transcender as aparências. Esta teoria não só moldou a metafísica e a epistemologia ocidentais, mas também influenciou a ética, sugerindo que a contemplação de ideias eleva as pessoas à sabedoria e à verdade. Embora Aristóteles, discípulo de Platão, discordasse em muitos pontos, especialmente no que diz respeito à separação entre as ideias e o mundo sensível, seus críticos consolidaram um debate que permanece no centro da história da filosofia. Desta forma, a Teoria das Ideias de Platão vai além de uma concepção metafísica, sendo um modelo global de compreensão do universo e de busca do conhecimento, com influência duradoura no pensamento filosófico e na forma de compreender a realidade e o conhecimento.',
        '2024-11-21',
        1
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'Papel da filosofia no mundo contemporâneo: filosofia X tecnologia',
        'A relação entre Filosofia e Tecnologia é essencial no mundo contemporâneo para equilibrar o avanço técnico com a preservação de valores humanos fundamentais. Questões como a autonomia da inteligência artificial, a ética do uso de dados pessoais e os impactos na identidade humana desafiam nossa compreensão de liberdade, privacidade e moralidade. A Filosofia, ao oferecer uma análise crítica e orientações éticas, ajuda a moldar políticas e práticas que assegurem que o progresso tecnológico sirva ao bem-estar coletivo, preservando a dignidade e a autonomia dos indivíduos. Assim, ela se torna indispensável para garantir que o desenvolvimento tecnológico esteja alinhado com os valores essenciais da humanidade.',
        '2024-11-21',
        1
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'Como a filosofia aparece nos vestibulares?',
        'O estudo da Filosofia é essencial para o sucesso em vestibulares como o ENEM, que exige uma compreensão crítica de conceitos filosóficos aplicados a questões contemporâneas. Temas como a Teoria das Ideias de Platão, a ética de Aristóteles, o existencialismo de Sartre e o pensamento crítico de Kant aparecem frequentemente, desafiando os estudantes a refletirem sobre questões éticas, políticas e epistemológicas. Além de memorização, é fundamental entender como essas ideias influenciam a sociedade atual, especialmente em áreas como a interseção entre tecnologia e ética. A Filosofia não apenas prepara para os exames, mas também desenvolve o pensamento crítico, necessário para analisar os dilemas do mundo moderno.',
        '2024-11-21',
        1
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'Morre aos 79 anos o poeta Antonio Cicero',
        'Antonio Cicero, renomado compositor, poeta e imortal da Academia Brasileira de Letras, faleceu em 23 de outubro de 2024, na Suíça, por meio de um procedimento de suicídio assistido, após enfrentar os desafios do Alzheimer. Nascido no Rio de Janeiro em 1945, destacou-se por sua produção literária e parcerias musicais com artistas como Marina Lima, João Bosco e Adriana Calcanhotto. Autor de obras premiadas como *Guardar* e *Finalidades sem fim*, Cicero também contribuiu para a filosofia e poesia brasileira contemporânea. Em sua carta de despedida, expressou gratidão às amizades, refletiu sobre sua perda de capacidade criativa e reafirmou sua escolha como um ato de dignidade. A Academia Brasileira de Letras prestará homenagem com uma "sessão da saudade", onde Marina Lima cantará suas músicas.',
        '2024-11-28',
        3
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'Notícia 11',
        'Conteúdo da notícia 11',
        '2021-01-11',
        3
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'Notícia 12',
        'Conteúdo da notícia 12',
        '2021-01-12',
        3
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'O que é estoicismo',
        'O estoicismo, fundado por Zenão de Cítio no século III aC, oferece uma filosofia de vida centrada na paz interior e no autocontrole. Ele ensina que a verdadeira felicidade não depende de circunstâncias externas, mas de como respondemos a elas, buscando a ataraxia (tranquilidade) por meio da razão e do controle emocional. Os estóicos enfatizam a aceitação do destino e a prática da apatia (uma indiferença saudável diante daquilo que não podemos controlar), argumentando que a virtude e a sabedoria são os caminhos para o verdadeiro florescimento. Com pensadores como Sêneca, Epicteto e Marco Aurélio, o estoicismo apresenta uma abordagem prática, enfatizando que a liberdade e a tranquilidade surgem da compreensão e aceitação da vida como ela é, agindo sempre de forma moral e racional.',
        '2024-11-26',
        5
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        'A Escola de Frankfurt',
        'A Escola de Frankfurt, criada na década de 1920 no Instituto de Pesquisa Social da Alemanha, é uma corrente filosófica conhecida pela teoria crítica, que busca superar as limitações do marxismo tradicional por meio de uma abordagem interdisciplinar envolvendo sociologia, psicologia e cultura. Pensadores como Adorno, Horkheimer e Marcuse criticaram a indústria cultural, afirmando que produtos como cinema e música reforçam o status quo, alienando a sociedade em vez de promover a reflexão. Em A Dialética do Iluminismo, Adorno e Horkheimer apontaram como o progresso tecnológico, além de benefícios, trouxe exploração e perda de valores humanos. A influência da Escola de Frankfurt permanece relevante, abordando temas contemporâneos como manipulação midiática, desinformação e a luta por liberdade pessoal e moral.',
        '02-12-2024',
        5
    );

INSERT INTO
    noticias (
        titulo,
        descricao_conteudo,
        data_publicacao,
        autor_id
    )
VALUES
    (
        '5 filosofos que você precisa conhecer',
        'Sócrates, Platão, Aristóteles, René Descartes e Friedrich Nietzsche são cinco filósofos essenciais para quem se prepara para o vestibular. Sócrates se destaca por seu método de questionamento, a *maiêutica*, afirmando que o autoconhecimento era a chave para uma vida moral. Platão, discípulo de Sócrates, criou a Teoria das Ideias, que diz que o mundo sensível é uma cópia imperfeita do mundo das ideias. Aristóteles, aluno de Platão, trouxe uma lógica formal e uma ética baseada no equilíbrio e na busca pela felicidade. Descartes, o pai da filosofia moderna, afirmou que a dúvida era o caminho para a certeza, resumida em “Penso, logo existo”. Nietzsche, por outro lado, criticou a moralidade tradicional e propôs a ideia do Übermensch e a necessidade de criação de novos valores. Esses pensadores formaram o pensamento filosófico e são indispensáveis ​​para o vestibular.',
        '2024-12-02',
        5
    );
    
INSERT INTO noticias_imagens (noticia_id, url_imagem) VALUES 
(1, 'https://site-filosofia.vercel.app/img/socrates.jpg'),
(1, 'https://site-filosofia.vercel.app/img/aristoteles.png'),
(1, 'https://site-filosofia.vercel.app/img/plat%C3%A3o.jpg'),
(1, 'https://site-filosofia.vercel.app/img/descartes-peq.jpg'),
(1, 'https://site-filosofia.vercel.app/img/Immanuel%20Kant.jpg'),
(1, 'https://site-filosofia.vercel.app/img/David%20Hume.jpg'),
(1, 'https://site-filosofia.vercel.app/img/Saint_Augustine.jpg'),
(1, 'https://site-filosofia.vercel.app/img/Immanuel%20Kant.jpg'),
(1, 'https://site-filosofia.vercel.app/img/Maquiavel.jpg'),
(1, 'https://site-filosofia.vercel.app/img/rousseau.jpg'),
(1, 'https://site-filosofia.vercel.app/img/thomas-hobbes.png'),
(1, 'https://site-filosofia.vercel.app/img/satre.jpg'),
(1, 'https://site-filosofia.vercel.app/img/simone_de_beauvoir.jpg');

