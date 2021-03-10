
CREATE DATABASE avaliacao_dupla_bd;
GO
USE avaliacao_dupla_bd;
GO


CREATE TABLE Quadro_Horario
(
	cod_quadro INT not null,
	CONSTRAINT pk_quadro_horario PRIMARY KEY(cod_quadro)
);
GO

CREATE TABLE Horario_Feriado
(
	cod_quadro INT not null,
	hora_saida TIME(0) not null,
	CONSTRAINT fk_hr_feriado_cod_quadro FOREIGN KEY (cod_quadro) REFERENCES Quadro_Horario(cod_quadro),
	CONSTRAINT pk_horario_feriado PRIMARY KEY(cod_quadro, hora_saida)
);
GO
CREATE TABLE Horario_Sabado
(
	cod_quadro int not null,
	hora_saida TIME(0) not null,
	CONSTRAINT fk_hr_sabado_cod_quadro FOREIGN KEY (cod_quadro) REFERENCES Quadro_Horario(cod_quadro),
	CONSTRAINT pk_horario_sabado PRIMARY KEY(cod_quadro, hora_saida)
);
GO
CREATE TABLE Horario_Domingo
(
	cod_quadro int not null,
	hora_saida TIME(0) not null,
	CONSTRAINT fk_hr_domingo_cod_quadro FOREIGN KEY (cod_quadro) REFERENCES Quadro_Horario(cod_quadro),
	CONSTRAINT pk_horario_domingo PRIMARY KEY(cod_quadro, hora_saida)
);
GO
CREATE TABLE Horario_Dia_Util
(
	cod_quadro int not null,
	hora_saida TIME(0) not null,
	CONSTRAINT fk_hr_dia_util_cod_quadro FOREIGN KEY (cod_quadro) REFERENCES Quadro_Horario(cod_quadro),
	CONSTRAINT pk_horario_dia_util PRIMARY KEY(cod_quadro, hora_saida)
);
GO


CREATE TABLE Linha
(
	cod_linha INT not null IDENTITY(1,1),
	nome VARCHAR(50) not null,
	cod_quadro INT not null,
	CONSTRAINT pk_linha PRIMARY KEY(cod_linha),
	CONSTRAINT fk_linha_cod_quadro FOREIGN KEY (cod_quadro) REFERENCES Quadro_Horario(cod_quadro)
);
GO

CREATE TABLE Itinerario
(
	cod_itinerario INT not null IDENTITY(1,1),
	cod_linha INT not null,
	CONSTRAINT pk_itinerario PRIMARY KEY (cod_itinerario),
	CONSTRAINT fk_itinerario_linha FOREIGN KEY (cod_linha) REFERENCES Linha(cod_linha),
	CONSTRAINT cod_linha_unico UNIQUE (cod_linha)
);
GO

CREATE TABLE Percurso
(
	cod_itinerario int not null,
	cod_percurso int not null IDENTITY(1,1),
	sentido VARCHAR(100) not null,
	constraint pk_percurso primary key (cod_percurso),
	constraint fk_percurso_itinerario foreign key (cod_itinerario) references Itinerario(cod_itinerario)
);
GO

create table Logradouro
(
	cod_logradouro int not null IDENTITY(1,1),
	nome_logradouro varchar(50) not null,
	constraint pk_logradouro primary key (cod_logradouro)
);
GO

create table Logradouro_Percurso
(
	cod_percurso int not null,
	cod_logradouro int not null,
	constraint pk_logradouro_percurso primary key (cod_percurso, cod_logradouro),
	constraint fk_logradouro_percurso_logradouro foreign key (cod_logradouro) references Logradouro(cod_logradouro),
	constraint fk_logradouro_percurso_percuso foreign key (cod_percurso) references Percurso(cod_percurso)
);
GO

create table Empresa
(
	cnpj char(14) not null,
	nome varchar(50) not null,
	web_site varchar(100) not null,
	end_logradouro varchar(50) not null,
	end_bairro varchar(40) not null,
	end_numero varchar(5) not null,
	cep char(8) not null,
	end_localidade varchar(40) not null,
	end_uf char (2) not null,
	end_complemento varchar(50),
	constraint pk_empresa primary key (cnpj)
);
GO

create table Telefone_Empresa
(
	cnpj char(14) not null,
	numero char(9) not null,
	ddd char(2) not null,
	tipo varchar (20) not null,
	constraint pk_telefone_empresa primary key (cnpj, numero),
	constraint fk_telefone_empresa_empresa foreign key (cnpj) references Empresa(cnpj)
);
GO

create table Linha_Empresa
(
	cnpj char(14) not null,
	cod_linha int not null,
	constraint pk_linha_empresa primary key (cnpj, cod_linha),
	constraint fk_linha_empresa_linha foreign key (cod_linha) references Linha(cod_linha),
	constraint fk_linha_empresa_empresa foreign key (cnpj) references Empresa(cnpj)
);