SELECT pg_size_pretty(pg_database_size('loja_cds'));
SELECT pg_size_pretty(pg_database_size('bd_cd1'));

SELECT (SUM(blks_hit)/SUM(blks_read+blks_hit) * 100)::int AS
taxa FROM pg_stat_database;