CREATE TABLE produto (

	id int NOT NULL,
	descricao varchar(255) NOT NULL,
	preco_custo decimal(10,2) NOT NULL,
	preco_venda decimal(10,2) NOT NULL,
	qtd_estoque int NOT NULL,
	qtd_estoque_minimo int NOT NULL,
	id_categoria int NOT NULL,
	id_marca int NOT NULL,
	id_unidade int NOT NULL,
	PRIMARY KEY (id)

);

CREATE TABLE categoria (

	id int NOT NULL,
	descricao varchar(255) NOT NULL,
	PRIMARY KEY (id)

);

CREATE TABLE marca (

	id int NOT NULL,
	nome varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE unidade (

	id int NOT NULL,
	descricao varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

ALTER TABLE produto ADD FOREIGN KEY (id_categoria) REFERENCES categoria (id);
ALTER TABLE produto ADD FOREIGN KEY (id_marca) REFERENCES marca (id);
ALTER TABLE produto ADD FOREIGN KEY (id_unidade) REFERENCES unidade (id);
