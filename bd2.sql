CREATE TABLE projeto (

	id int NOT NULL,
	nome varchar(255) NOT NULL,
	concluido boolean NOT NULL,
	PRIMARY KEY (id)

);

CREATE TABLE tarefa (

	id int NOT NULL,
	descricao text NOT NULL,
	tempo_estimado numeric(5,2) NOT NULL,
	tempo_reportado numeric(5,2) NULL,
	concluida boolean NOT NULL,
	projeto_id int NOT NULL,
	colaborador_id int NOT NULL,
	PRIMARY KEY (id)

);

CREATE TABLE colaborador (

	id int NOT NULL,
	nome varchar(255) NOT NULL,
	data_nascimento date NOT NULL,
	cargo_id int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE cargo (

	id int NOT NULL,
	nome varchar(50) NOT NULL,
	salario_por_hora numeric(5,2) NOT NULL,
	PRIMARY KEY (id)
);

ALTER TABLE tarefa ADD FOREIGN KEY (projeto_id) REFERENCES projeto (id);
ALTER TABLE tarefa ADD FOREIGN KEY (colaborador_id) REFERENCES colaborador (id);
ALTER TABLE colaborador ADD FOREIGN KEY (cargo_id) REFERENCES cargo (id);
