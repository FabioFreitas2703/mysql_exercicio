select razaosocial,nomedoproduto,precounitario
from fornecedores f
inner join produtos p on f.idfornecedor = p.idfornecedor;