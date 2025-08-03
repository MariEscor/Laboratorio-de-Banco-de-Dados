CREATE TABLE localizacao (
	codigolocal INTEGER NOT NULL,
	deptnumero INTEGER,
	nomelocal VARCHAR(30),
	PRIMARY KEY (codigolocal),
	FOREIGN KEY (deptnumero) REFERENCES departamento(dnumero)
);

INSERT INTO localizacao VALUES (1, 5, 'Sao Paulo');
INSERT INTO localizacao VALUES (2 , 4, 'Curitiba');
INSERT INTO localizacao VALUES (3 , 1, 'Belo Horizonte');

SELECT * 
FROM localizacao

UPDATE 	departamento SET gerentecpf = '1234555555' WHERE dnumero = 1;

SELECT pnome, salario
FROM funcionario
WHERE salario > 3000

SELECT pnome, endereco
FROM funcionario
JOIN departamento ON numerodept = dnumero
WHERE dnome = 'pesquisa'

SELECT unome, horas
FROM funcionario
JOIN trabalhaem ON cpf = funcionariocpf
WHERE projetonumero = '3'

SELECT pnome, unome
FROM funcionario

