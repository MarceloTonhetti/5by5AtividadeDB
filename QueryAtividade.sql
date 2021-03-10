USE avaliacao_dupla_bd;
GO

-- 6
--A Obter todas as linhas atendidas por uma determinada empresa, dado o nome dessa empresa.
SELECT e.nome AS EMPRESA, l.nome AS Nome_Linha, l.cod_linha
FROM Linha AS l
JOIN Linha_Empresa AS le on l.cod_linha = le.cod_linha
JOIN Empresa AS e on le.cnpj = e.cnpj
WHERE e.nome = 'Viação Paraty';

--B Obter o itinerário de uma determinada linha de ônibus, dado o Nome (Identificação) dessa linha. 
SELECT l.nome, per.sentido, logr.nome_logradouro AS Paradas
FROM Itinerario AS it
JOIN Percurso AS per ON per.cod_itinerario = it.cod_itinerario
JOIN Logradouro_Percurso AS logr_per ON logr_per.cod_percurso = per.cod_percurso
JOIN Logradouro AS logr ON logr.cod_logradouro = logr_per.cod_logradouro
JOIN Linha AS l ON l.cod_linha = it.cod_linha
WHERE l.nome = 'Águas do Paiol / Terminal (TCI)';


--C (não finalizada) Obter o quadro de horário de uma determinada linha, dado seu Nome.
SELECT l.nome AS Linha, hrdu.hora_saida AS Dias_uteis, hrs.hora_saida AS Sabados, hrd.hora_saida AS Domingo, hrf.hora_saida AS Feriados
FROM Linha AS l
JOIN Quadro_Horario AS qh ON l.cod_quadro = qh.cod_quadro
JOIN Horario_Dia_Util AS hrdu ON hrdu.cod_quadro = qh.cod_quadro
JOIN Horario_Sabado AS hrs ON hrs.cod_quadro = qh.cod_quadro
JOIN Horario_Domingo AS hrd ON hrd.cod_quadro = qh.cod_quadro
JOIN Horario_Feriado AS hrf ON hrf.cod_quadro = qh.cod_quadro
WHERE l.nome = 'Águas do Paiol / Terminal (TCI)';

--D Obter as linhas de ônibus/empresa que passam por um determinado logradouro, dado o nome desse logradouro.
SELECT DISTINCT l.nome As Linha, e.nome AS Empresa
FROM Linha AS l
JOIN Itinerario AS it ON it.cod_linha = l.cod_linha
JOIN Percurso AS per ON per.cod_itinerario = it.cod_itinerario
JOIN Logradouro_Percurso AS logr_per ON logr_per.cod_percurso = per.cod_percurso
JOIN Logradouro AS logr ON logr.cod_logradouro = logr_per.cod_logradouro
JOIN Linha_Empresa AS le ON le.cod_linha = l.cod_linha
JOIN Empresa AS e ON e.cnpj = le.cnpj
WHERE logr.nome_logradouro = 'Av. Augusto Bernardi';