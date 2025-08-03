CREATE OR REPLACE VIEW estudantes_portugues AS
SELECT e.matricula, e.nome
FROM estudante e
JOIN cursa c ON e.matricula = c.matricula_est
JOIN disciplina d ON c.cod_disc = d.codigo
WHERE d.descricao = 'Portugues';

SELECT * FROM estudantes_portugues;

CREATE OR REPLACE VIEW estudantes_portugues AS
SELECT e.matricula, e.nome, e.rg
FROM estudante e
JOIN cursa c ON e.matricula = c.matricula_est
JOIN disciplina d ON c.cod_disc = d.codigo
WHERE d.descricao = 'Portugues';

CREATE OR REPLACE VIEW numero_estudante_turma AS
SELECT COUNT(e.matricula), t.serie
FROM estudante e
JOIN turma t ON e.cod_turma = t.codigo
GROUP BY t.serie;

SELECT * FROM numero_estudante_turma;

DROP VIEW numero_estudante_turma;
