<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          <!--.cod { text-align:center; border:2px red solid;}-->                         <!-- Cambio el selector para hacerlo más semántico -->
          <!-- tr:first-child td { text-align:center; border:2px blue solid; padding: 8px;} -->   <!-- Pero solo me funciona en la primera iteración del FOR ¿? -->
          
          tr:nth-child(4n+1) { text-align:center; border:2px red solid; background-color:yellow; padding: 8px;}
          
        </style>
      </head>
      <body>
        <h1>Catálogo:</h1>
        <table>
          <xsl:for-each select="productos_vendidos/producto">
          <xsl:sort  select="@codventa"/>
            <tr>
                  <td class="cod">Código: <xsl:value-of select="@codventa"/></td>
            </tr>
            <tr>
                  <td><xsl:value-of select="nombre"/></td>
            </tr>
            <tr>
                  <td><xsl:value-of select="detalle"/></td>
            </tr>
            <tr>
                   <td><xsl:value-of select="@precio"/> euros</td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
