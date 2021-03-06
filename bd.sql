-- CRIAÇÃO DAS TABELAS



CREATE TABLE aluno (

	id serial NOT NULL,

	nome varchar(255) NOT NULL,

	data_nascimento date NOT NULL,

	sexo char(1) NOT NULL CHECK (sexo='M' OR sexo='F' OR sexo='O'),

	PRIMARY KEY (id)

);



CREATE TABLE disciplina (

	id serial NOT NULL,

	nome varchar(255) NOT NULL,

	carga_horaria smallint NOT NULL DEFAULT 72,

	PRIMARY KEY (id)

);



CREATE TABLE aluno_disciplina (

	aluno_id int NOT NULL,

	disciplina_id int NOT NULL,

	nota numeric(4,2) NOT NULL CHECK (nota >= 0 AND nota <= 10),

	PRIMARY KEY (aluno_id, disciplina_id)

);





-- RELACIONAMENTOS DAS TABELAS



ALTER TABLE aluno_disciplina ADD FOREIGN KEY (aluno_id) REFERENCES aluno (id);



ALTER TABLE aluno_disciplina ADD FOREIGN KEY (disciplina_id) REFERENCES disciplina (id);-- CRIAÇÃO DAS TABELAS



CREATE TABLE aluno (

	id serial NOT NULL,

	nome varchar(255) NOT NULL,

	data_nascimento date NOT NULL,

	sexo char(1) NOT NULL CHECK (sexo='M' OR sexo='F' OR sexo='O'),

	PRIMARY KEY (id)

);



CREATE TABLE disciplina (

	id serial NOT NULL,

	nome varchar(255) NOT NULL,

	carga_horaria smallint NOT NULL DEFAULT 72,

	PRIMARY KEY (id)

);



CREATE TABLE aluno_disciplina (

	aluno_id int NOT NULL,

	disciplina_id int NOT NULL,

	nota numeric(4,2) NOT NULL CHECK (nota >= 0 AND nota <= 10),

	PRIMARY KEY (aluno_id, disciplina_id)

);





-- RELACIONAMENTOS DAS TABELAS



ALTER TABLE aluno_disciplina ADD FOREIGN KEY (aluno_id) REFERENCES aluno (id);



ALTER TABLE aluno_disciplina ADD FOREIGN KEY (disciplina_id) REFERENCES disciplina (id);