"1.-",
for $a in //nombre/text() return $a,
"2.-",
for $a in //nombre|//precio
return $a,
"3.-",
for $a in //nombre/text()|//precio/text()
where $a/../../precio > 40
return $a,
"4.-",
for $a in //nombre/text()
order by $a
return $a,
"5.-",
for $a in //nombre/text()
where contains($a, "a")
return $a,
"6.-",
for $a in //baile
where contains($a/profesor, "Lozano")
return $a/nombre/text()