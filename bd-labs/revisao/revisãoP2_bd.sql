--4
CREATE INDEX indice_gravadora 
ON gravadora (codigo_gravadora);

CREATE INDEX indice_cd 
ON CD (codigo_cd, codigo_gravadora);

CREATE INDEX indice_faixa
ON FAIXA (numero_faixa, codigo_cd, codigo_musica);

CREATE INDEX indice_musica
ON MUSICA (codigo_musica);

CREATE INDEX indice_musica_autor
ON MUSICA_AUTOR (codigo_musica, codigo_autor);

CREATE INDEX indice_autor
ON AUTOR (codigo_autor);

--5
EXPLAIN
SELECT MUSICA.nome_musica, AUTOR.nome_autor
FROM MUSICA 
JOIN MUSICA_AUTOR ON MUSICA.codigo_musica = MUSICA_AUTOR.codigo_musica
JOIN AUTOR ON MUSICA_AUTOR.codigo_autor = AUTOR.codigo_autor;

--6
CREATE ROLE mendes LOGIN PASSWORD 'asdfg' CREATEDB;

--7
ALTER ROLE mendes PASSWORD '123456';


--8
GRANT select, insert ON GRAVADORA TO mendes;

--9
REVOKE select, insert ON GRAVADORA FROM mendes;

--10
pg_dump -U postgres -a -Fc -b -f "C:/Users/Mariana Escorcer/Documents/revisaoP2_05072023.backup" revisaoP2

--11
pg_dump -U postgres -f "C:/Users/Mariana Escorcer/Documents/revisaoP2_05072023.backup" -t GRAVADORA revisaoP2

--12






