<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="pelicula">
  <head>
  <style>
    tr:first-child { color:red;}
  </style>
  </head>
  <body>
    <h1>PLAN DE TRABAJO <em><xsl:value-of select="@titulo"/></em></h1>
    <h2>Director: <em><xsl:value-of select="@director"/></em></h2>
    <h2>Año producción: <em><xsl:value-of select="@año"/></em></h2>
    <table>
    <tr><th colspan="3">Responsables</th></tr>
    <tr><th>País</th><th>Nombre</th><th>Apellidos</th></tr>
      <xsl:apply-templates />
     </table>
    </body>
  </xsl:template>
  
  <xsl:template match="localizacion">
  <tr>
    <td><xsl:value-of select="País"/></td>
    
  
  </tr>
  </xsl:template>
</xsl:stylesheet>
