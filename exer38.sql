select f.razaosocial Fornecedor,
count(p.idproduto) Qtd,
round(avg(p.precounitario),2)Media
from fornecedores f
inner join produtos p on f. idfornecedor = p.idfornecedor
group by 1
order by 3 desc;