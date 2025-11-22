select
month(f.datanascimento) mes,
day(f.datanascimento) dia,
f. nomefuncionario nome
from funcionario f
order by mes desc, dia asc;