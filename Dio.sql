CREATE DATABASE db_Dio_MySQL;

CREATE TABLE pessoa (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(40) NOT NULL,
    nascimento DATE
);

CREATE TABLE nova_pessoa (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(40) NOT NULL,
    nascimento DATE
);


INSERT INTO nova_pessoa (nome, nascimento) VALUES ('Giovanna','20140320');
INSERT INTO nova_pessoa (nome, nascimento) VALUES ('Sebastião','19640627');
INSERT INTO nova_pessoa (nome, nascimento) VALUES ('Augusta','19180801');
INSERT INTO nova_pessoa (nome, nascimento) VALUES ('Aparecida','19420720');
INSERT INTO nova_pessoa (nome, nascimento) VALUES ('Lourdes','19230801');
INSERT INTO nova_pessoa (nome, nascimento) VALUES ('Nathally Souza','19950522');


SELECT * FROM `nova_pessoa`;

SELECT nome FROM `nova_pessoa` ORDER BY nascimento DESC;

SELECT nome FROM `nova_pessoa` ORDER BY nascimento;

SELECT COUNT(id), genero FROM `pessoa` GROUP BY  genero;


UPDATE nova_pessoa SET nome = 'Giovanna Freitas' WHERE nome = 'Giovanna';
UPDATE nova_pessoa SET nome = 'Sebastião Freitas' WHERE nome = 'Sebastião';
UPDATE nova_pessoa SET nome = 'Aparecida Freitas' WHERE nome = 'Aparecida';
UPDATE nova_pessoa SET nome = 'Lourdes Almeida' WHERE nome = 'Lourdes';
UPDATE nova_pessoa SET nome = 'Augusta Freitas' WHERE nome = 'Augusta';


DELETE FROM nova_pessoa WHERE nome = 'Nathally Souza';


INSERT INTO pessoa (nome, nascimento, genero) VALUES ('Giovanna','20140320','F');
INSERT INTO pessoa (nome, nascimento, genero) VALUES ('Sebastião','19640627','M');
INSERT INTO pessoa (nome, nascimento, genero) VALUES ('Augusta','19180801','F');
INSERT INTO pessoa (nome, nascimento, genero) VALUES ('Aparecida','19420720','F');
INSERT INTO pessoa (nome, nascimento, genero) VALUES ('Lourdes','19230801','F');
INSERT INTO pessoa (nome, nascimento, genero) VALUES ('Nathally Souza','19950522','F');

UPDATE pessoa SET nome = 'Giovanna Freitas' WHERE nome = 'Giovanna';
UPDATE pessoa SET nome = 'Sebastião Freitas' WHERE nome = 'Sebastião';
UPDATE pessoa SET nome = 'Aparecida Freitas' WHERE nome = 'Aparecida';
UPDATE pessoa SET nome = 'Lourdes Almeida' WHERE nome = 'Lourdes';
UPDATE pessoa SET nome = 'Augusta Freitas' WHERE nome = 'Augusta';

SELECT * FROM pessoa;videos

