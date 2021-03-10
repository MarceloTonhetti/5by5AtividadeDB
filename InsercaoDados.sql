--INSERÇÕES DE DADOS

--EMPRESA
INSERT INTO Empresa (cnpj, nome, web_site, end_logradouro, end_bairro, end_numero, cep, end_localidade, end_uf)
VALUES ('22612195000163', 'Viação Paraty', 'https://vparaty.com.br/', 'Avenida Otto Ernani Muller', 'Jardim Tamoio', '10', '14800630', 'Araraquara', 'SP');

INSERT INTO Empresa (cnpj, nome, web_site, end_logradouro, end_bairro, end_numero, cep, end_localidade, end_uf)
VALUES ('32212792000154', 'Empresa cruz', 'https://www.empresacruz.com.br/', 'R. Domingos Zanin', 'Jardim Artico', '264', '14800250', 'Araraquara', 'SP');


--TELEFONE EMPRESA
INSERT INTO Telefone_Empresa (cnpj, numero, ddd, tipo)
VALUES ('22612195000163', '33347800', '16', 'Telefone fixo');

INSERT INTO Telefone_Empresa (cnpj, numero, ddd, tipo)
VALUES ('32212792000154', '33114000', '16', 'Telefone fixo');


--==========================================================
--QUADRO_HORARIO
INSERT INTO Quadro_Horario (cod_quadro)
VALUES (1);

--HORARIO FERIADO
INSERT INTO Horario_Feriado (cod_quadro, hora_saida)
VALUES (1, '08:00');
INSERT INTO Horario_Feriado (cod_quadro, hora_saida)
VALUES (1, '10:00');
INSERT INTO Horario_Feriado (cod_quadro, hora_saida)
VALUES (1, '12:00');


--HORARIO SABADO
INSERT INTO Horario_Sabado (cod_quadro, hora_saida)
VALUES (1, '06:00');
INSERT INTO Horario_Sabado (cod_quadro, hora_saida)
VALUES (1, '07:00');
INSERT INTO Horario_Sabado (cod_quadro, hora_saida)
VALUES (1, '08:00');


--HORARIO DOMINGO
INSERT INTO Horario_Domingo (cod_quadro, hora_saida)
VALUES (1, '08:00');
INSERT INTO Horario_Domingo (cod_quadro, hora_saida)
VALUES (1, '09:00');
INSERT INTO Horario_Domingo (cod_quadro, hora_saida)
VALUES (1, '10:00');

--HORARIO DIA UTIL
INSERT INTO Horario_Dia_Util(cod_quadro, hora_saida)
VALUES (1, '06:00');
INSERT INTO Horario_Dia_Util(cod_quadro, hora_saida)
VALUES (1, '06:30');
INSERT INTO Horario_Dia_Util(cod_quadro, hora_saida)
VALUES (1, '07:00');
INSERT INTO Horario_Dia_Util(cod_quadro, hora_saida)
VALUES (1, '07:30');

--==================================================

--LINHA
INSERT INTO Linha (nome, cod_quadro)
VALUES ('Águas do Paiol / Terminal (TCI)', 1);
INSERT INTO Linha (nome, cod_quadro)
VALUES ('Atacadão / Centro', 1);

--LINHA EMPRESA
INSERT INTO Linha_Empresa (cnpj, cod_linha)
VALUES ('22612195000163', 1);
INSERT INTO Linha_Empresa (cnpj, cod_linha)
VALUES ('22612195000163', 2);
INSERT INTO Linha_Empresa (cnpj, cod_linha)
VALUES ('32212792000154', 2);

--===================================================

--ITINERARIO
INSERT INTO Itinerario (cod_linha)
VALUES (1);
INSERT INTO Itinerario (cod_linha)
VALUES (2);


--PERCURSO
INSERT INTO Percurso (cod_itinerario, sentido)
VALUES (1, 'Águas do Paiol - TCI:AV.Augusto Bernardi(ponto final)');
INSERT INTO Percurso (cod_itinerario, sentido)
VALUES (1, 'TCI - Águas do Paiol');
INSERT INTO Percurso (cod_itinerario, sentido)
VALUES (2, 'Corujão Norte / Terminal (TCI)');

--====================================================
--LOGRADOUROS
INSERT INTO Logradouro(nome_logradouro)
VALUES ('Av. Augusto Bernardi');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Rua Lino Morgante');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Av. Miguel Pocce');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Av. José Barbanti Neto');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Av. Antônio Honório Real');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Av. Prof° Gustavo Fleury Charmillot');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Rua Bento Machado Ramalho');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Rua Prof. Virgilio Abranches Quintão');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Rua Carlos Gomes');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Av. Padre Francisco Sales Culturato');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Rua São Bento');

INSERT INTO Logradouro(nome_logradouro)
VALUES ('Av.Portugal');

--====================================================
--LOGRADOUROS DO PERCUSO
INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(1, 1);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(1, 2);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(1, 3);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(1, 4);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(1, 5);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(1, 6);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(2, 7);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(2, 5);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(2, 4);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(2, 3);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(2, 2);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(2, 1);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(3, 1);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(3, 2);

INSERT INTO Logradouro_Percurso (cod_percurso, cod_logradouro)
VALUES(3, 6);