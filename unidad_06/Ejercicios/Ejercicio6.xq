"6.1-Nombre de los módulos que se imparten en el centro.",
"",
//nombre/text(),
"",
"6.2-Nombre de los módulos del ciclo ASIR.",
"",
//modulo[ciclo="ASIR"]/nombre/text(),
"",
"6.3-Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo.",
"",
//modulo[curso=2]/nombre/text(),
"",
"6.4-Nombre de los módulos de menos de 5 horas semanales.",
"",
//modulo[horasSemanales < 5]/nombre/text(),
"",
"6.5-Nombre de los módulos que se imparten en el primer curso de ASIR:",
"",
//modulo[ciclo = "ASIR" and curso = 1]/nombre/text(),
"",
"6.6-Horas semanales de los módulos de más de 3 horas semanales (4, 5, 5):",
"",
//horasSemanales[. > 3]/text()