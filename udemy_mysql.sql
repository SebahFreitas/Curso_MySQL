CREATE TABLE tb_users(
    id_user INT(3) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL
    );
    
 

CREATE TABLE tb_alunos(
    cd_aluno INT(5) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    endereco VARCHAR(60) NULL,
    estado CHAR(2) NOT NULL
    );


DESCRIBE tb_alunos;

INSERT INTO tb_alunos(nome, endereco, estado) VALUES 
(
    'Sebastião Freitas',
    'Rua General Severiano 205, ap 701',
    'RJ'
 );

INSERT INTO tb_alunos(nome, endereco, estado) VALUES 
(
    'Giovanna Freitas',
    'Rua General Severiano 205, ap 701',
    'RJ'
 );

 INSERT INTO tb_alunos (nome, endereco, estado) Values 
 ('Bimbo', 'Casa do Papai - Rio de Janeiro', 'RJ'
 );

SELECT * FROM tb_alunos WHERE estado = 'RJ' ORDER BY nome;


UPDATE tb_alunos SET nome = 'Bimbo Freitas' WHERE cd_aluno= 1
UPDATE tb_alunos SET nome = 'Bimbo Coelho' WHERE cd_aluno= 9
UPDATE tb_alunos SET nome = 'Bimbo da Gigi' WHERE cd_aluno= 10
UPDATE tb_alunos SET nome = 'Bimbo da Monteiro' WHERE cd_aluno= 11;

SELECT * FROM tb_alunos ORDER BY nome;


DELETE FROM tb_alunos WHERE nome = 'Bimbo da Monteiro';

