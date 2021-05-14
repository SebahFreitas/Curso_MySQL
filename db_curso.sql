CREATE DATABASE db_curso_dio;



CREATE TABLE tb_alunos (
    id_aluno INT (5) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    e_mail VARCHAR(60) NOT NULL,
    senha VARCHAR(60) NOT NULL
);


DESCRIBE tb_alunos;

INSERT INTO tb_alunos (nome, e_mail, senha) VALUES ('Giovanna','giovanna@yandex.com','20140320');
INSERT INTO tb_alunos (nome, e_mail, senha) VALUES ('Sebastião','sebastiao@yandex.com','19640627');
INSERT INTO tb_alunos (nome, e_mail, senha) VALUES ('Augusta','augusta@yandex.com','19180801');
INSERT INTO tb_alunos (nome, e_mail, senha) VALUES ('Aparecida','aparecida@yandex.com','19420720');
INSERT INTO tb_alunos (nome, e_mail, senha) VALUES ('Lourdes','lourdes@yandex.com','19230801');
INSERT INTO tb_alunos (nome, e_mail, senha) VALUES ('Almeida','almeida@yandex.com','19140120');
INSERT INTO tb_alunos (nome, e_mail, senha) VALUES ('Gonçalves','goncalves@yandex.com','19110920');


SELECT * FROM tb_alunos ORDER BY nome
