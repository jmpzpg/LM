"1.- Mostrar el nombre de todos los bailes",
for $b in //baile
return $b/nombre/text(),
"2.- Mostrar el nombre y el precio de todos los bailes. Elementos completos",
for $b in //baile
return $b/nombre | $b/precio,
"3.- Mostrar el nombre y precio de todos los bailes donde su precio es mayor que 40",
for $b in //baile
where $b/precio > 40
return $b/nombre | $b/precio,
"4.- Mostrar los bailes ordenados por nombre",
for $b in //baile
order by $b/nombre
return $b/nombre/text(),
"5.- Mostrar los nombres de los bailes que contienen una a",
for $b in //baile
where contains($b/nombre, 'a')
return $b/nombre/text(),
"6.- Mostrar el nombre de los bailes donde el apellido del profesor sea Lozano",
for $b in //baile
where contains($b/profesor, ' Lozano')
return $b/nombre/text()