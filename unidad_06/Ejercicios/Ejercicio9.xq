"1.-",
for $a in //libro/autoria/@Cod_Autor, $b in //Autores/autor/@IdAutor
where $a/data() = $b/data()
return ($a/../../Titulo/text(), concat($b/../Nombre/text()," ",$b/../Apellidos/text())),
 "2.-",
for $a in //libro/autoria/@Cod_Autor, $b in //Autores/autor/@IdAutor
where $a/data() = $b/data()
order by $b/../Nombre
return concat($a/../../Titulo/text()," -----> ",$b/../Nombre/text()," ",$b/../Apellidos/text())