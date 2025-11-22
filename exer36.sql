select nomedoproduto, unidadesemestoque,niveldereposica ,
niveldereposicao - unidadesemestoque A_Comprar
from produtos
where niveldereposicao > unidadesemestoque
order by 4 desc;