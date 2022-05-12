<html>
<head>
<title>Uso de listas</title>
<link rel="stylesheet" type="text/css" href="Ejercicio9LISTAS.css" />
</head>
<body>
<ol>
{
for $a in //libro/autoria/@Cod_Autor, $b in //Autores/autor/@IdAutor
where $a/data() = $b/data()
return <li>{concat("Código Libro: ",$a/../../@Cod_Libro/data())}
<ul>
<li>{$a/../../Titulo/text()}</li>
<li>{concat($b/../Nombre/text()," ",$b/../Apellidos/text())}</li>
</ul></li>
}
</ol>
</body>
</html>