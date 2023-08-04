CREATE TABLE public.categoria (
	id serial PRIMARY KEY,
	nome varchar(255) NOT NULL
);

CREATE TABLE public.produto (
	id serial PRIMARY KEY,
	nome varchar(255) NOT NULL,
	preco numeric(10, 2) NOT NULL,
	id_categoria int,
	FOREIGN KEY (id_categoria) REFERENCES public.categoria(id)
);

CREATE TABLE public.cliente (
	id serial PRIMARY KEY,
	nome varchar(255) NOT NULL,
	email varchar(255) NOT NULL,	
	sexo varchar(50) NOT NULL, -- Masculino, Feminino, Não-binário, Transgênero, Outro, Prefere Não Dizer	
	data_nascimento date NULL,
	CONSTRAINT cliente_email_key UNIQUE (email)	
);

CREATE TABLE public.venda (
	id serial PRIMARY KEY,
	data timestamp NOT NULL,
	id_cliente int,
    desconto numeric(10, 2) NULL,
	status varchar(50) NOT NULL, -- Pendente, Cancelada, Concluída
	FOREIGN KEY (id_cliente) REFERENCES public.cliente(id)
);

CREATE TABLE public.itens_venda (
	id serial PRIMARY KEY,
	id_venda int,
	id_produto int,
	quantidade int NOT NULL,
	preco numeric(10, 2) NOT NULL,	
	FOREIGN KEY (id_venda) REFERENCES public.venda(id),
	FOREIGN KEY (id_produto) REFERENCES public.produto(id)
);
