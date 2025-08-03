CREATE TABLE log_estudante(
codigo SERIAL,
matricula_est INTEGER,
comando VARCHAR(50),
usuario VARCHAR(20),
data_hora TIMESTAMP,
PRIMARY KEY (codigo)
);

/*4*/
CREATE RULE rl_insere_estudante AS
ON INSERT TO estudante DO
INSERT INTO log_estudante(matricula_est, comando, usuario,
data_hora) VALUES (new.matricula, 'insert', current_user, current_timestamp);

/*5*/
INSERT INTO estudante(matricula, cod_turma, nome, rg, endereco,
telefone, data_nasc) VALUES
(12, 2 , 'Ana', '158590', 'Rua A', 'xxxxxx-xxxx', '11-11-2003');

SELECT * FROM estudante;

/*6*/
CREATE RULE rl_update_estudante AS
ON UPDATE TO estudante
WHERE new.telefone <> old.telefone DO 
INSERT INTO log_estudante(matricula_est, comando, usuario,
data_hora) VALUES(new.matricula, 'insert', current_user, current_timestamp);

/*7*/
UPDATE estudante SET endereco = 'novo endereco' 
WHERE matricula = 12;

SELECT * FROM estudante;

UPDATE estudante SET telefone = 'novo-telefone' 
WHERE matricula = 12;

SELECT * FROM log_estudante;

/*8*/
CREATE RULE rl_no_delete_disciplina AS
ON DELETE TO estudante DO INSTEAD NOTHING;

/*9*/
CREATE TABLE professor_disciplina_auditoria(
codigo SERIAL,
codigo_disc INTEGER,
cpf_func VARCHAR(15),
dt_exclusao DATE,
usuario VARCHAR(20),
PRIMARY KEY(codigo)
);

/*10*/
CREATE RULE rl_delete_prof_disc AS
ON DELETE TO professor_disciplina DO
INSERT INTO professor_disciplina_auditoria(codigo_disc, cpf_func, dt_exclusao,usuario)
VALUES (old.codigo_disc, old.cpf_func, current_date, current_user);

/*11*/
DROP TABLE professor_disciplina;

SELECT * FROM professor_disciplina_auditoria;
