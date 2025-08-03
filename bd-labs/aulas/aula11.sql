--1
CREATE ROLE miguel LOGIN PASSWORD '123456' CREATEDB CREATEROLE;

--2
CREATE ROLE mariana LOGIN PASSWORD '8115' SUPERUSER;

--3
ALTER ROLE miguel PASSWORD '987654321';

--4 feito

--5 feito

--6
SELECT estudante.matricula, estudante.nome FROM estudante
JOIN cursa ON estudante.matricula = cursa.matricula_est
JOIN disciplina ON cursa.cod_disc = disciplina.codigo WHERE disciplina.descricao = 'Biologia';

--7 
CREATE ROLE ufv




Conecte no banco de dados postgres com o usuário postgres e crie um
grupo (role conteiner) chamado ufv.


