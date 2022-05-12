 for $com in //compra, $art in //articulo, $cli in //cliente
 where $com/@idcliente = $cli/@idcliente and $com/@codigo = $art/@codigo
 return ($art/modelo/text(),$art/marca/text(),$cli/nombre/text(),$com/fecha/text() )