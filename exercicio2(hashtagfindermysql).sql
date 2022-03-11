use hashtagfinder;

CREATE TABLE user (
	Id INT NOT NULL AUTO_INCREMENT UNIQUE,
    Email VARCHAR(100) NOT NULL,
    Senha VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE squad (
	Id INT NOT NULL AUTO_INCREMENT UNIQUE,
    Squad VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE buscas (
	Id INT NOT NULL AUTO_INCREMENT UNIQUE,
    SquadId INT NOT NULL,
    Hashtag VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (SquadID) REFERENCES squad(Id)
);

CREATE TABLE Projeto (
	Id INT NOT NULL AUTO_INCREMENT UNIQUE,
    SquadId INT NOT NULL,
    Sobre VARCHAR(500),
    PRIMARY KEY (id),
    FOREIGN KEY (SquadID) REFERENCES squad(Id)
);

CREATE TABLE equipe (
	Id INT NOT NULL AUTO_INCREMENT UNIQUE,
    SquadId INT NOT NULL,
    Nome VARCHAR(100),
    Descricao VARCHAR(500),
    Github VARCHAR (100),
    Email VARCHAR (100),
    Linkedin VARCHAR (100),
    Image SET("id", "url", "filename", "size", "type",  "width", "height", "thumbnails.small.url", "thumbnails.large.url", "thumbnails.small.width", "thumbnails.small.height", "thumbnails.large.width", "thumbnails.large.height"),
    PRIMARY KEY (id),
    FOREIGN KEY (SquadID) REFERENCES squad(Id)
);

CREATE TABLE login (
    Id INT NOT NULL AUTO_INCREMENT UNIQUE,
    SquadId INT NOT NULL,
    Senha VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (SquadID) REFERENCES squad(Id)
);

CREATE TABLE tweets (
    Id INT NOT NULL AUTO_INCREMENT UNIQUE,
    BuscaId INT NOT NULL,
    Query VARCHAR(100),
    PRIMARY KEY (id),
    FOREIGN KEY (BuscaId) REFERENCES buscas(Id)
);

#CRUDS

###Tabela squad

#criacao na tabela squad

Insert into squad (Id, Squad) Values (150222, 'squad_frontend_2');

#Leitura na tabela squad

Select * from squad;


#Modificacao na tabela squad

Update squad 
	SET Squad = 'Squad_2'
	Where Id = 1;

#Remocao na tabela squad

Delete from squad Where id = 1;

###Tabela user

#Criacao tabela user

Insert into user (Email, Senha) Values ('contato@newtab.academy', '123456'); 

#Consulta tabela user

Select * from user; 

#modificacao tabela user

Update user SET email = 'contato@newtab.academy2' WHERE id=1;

#Remocao tabela user

Delete FROM user WHERE id=1;

###Tabela buscas

#Criacao tabela buscas

INSERT INTO buscas (SquadId, Hashtag) VALUES (150222, 'teste');

#Consulta tabela buscas

Select * FROM buscas;

#Modificacao tabela buscas

UPDATE buscas SET Hashtag = 'teste 2' WHERE Id = 1;

#Remocao tabela buscas

DELETE FROM buscas WHERE id = 1;

###Tabela Equipe

#Criacao tabela equipe

INSERT INTO equipe (SquadId, Nome, Descricao, Github, Email, Linkedin, Image) 
	VALUES (150222, 'João', 'João é aluno NewTab', 'git@github.com', 'teste@teste.com', 'linkedin/joao', 1);

#Consulta tabela equipe

SELECT * from equipe;

#Modificacao tabela equipe

UPDATE equipe SET Image = (2) WHERE id = 1;

#Remocao tabela equipe

DELETE FROM equipe WHERE id =1;

###Tabela login

#Criacao tabela login

INSERT INTO login (SquadId, Senha, Email) VALUES (150222, '12345', 'contato@newtab.academy');

#Consulta tabela login

SELECT * FROM login; 

#Modificacao tabela login

UPDATE login SET Email = 'contato@newtab.aca' WHERE id = 1; 

#Remocao tabela login

DELETE FROM login WHERE id = 1; 
