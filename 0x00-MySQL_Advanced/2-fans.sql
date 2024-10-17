# Import the table dump
mysql -uroot -p holberton < metal_bands.sql

# SQL script to rank country origins of bands, ordered by the number of non-unique fans
echo "
SELECT origin, SUM(nb_fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
" | mysql -uroot -p holberton
