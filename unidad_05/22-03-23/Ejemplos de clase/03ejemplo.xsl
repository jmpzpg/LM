<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
    <head>
      <style>
      table {border-collapse: collapse;}
      th { border:4px black solid; padding: 10px; font-style: italic; font-size: Large;}
        td { text-align:center; border:2px black solid; padding: 5px 10px;}
        .precio1 {background-color:#FF0000; color: white;}
        .precio2  {background-color:#00FF00;}
        .precio3  {background-color:#0000FF; color: white;}
        tr td:nth-child(odd) { text-align:right;}  <!--la tercera columna de cualquier fila-->
      </style>
    </head>
    <body>
    <h1>Mi biblioteca:</h1>
    <table>
      <tr><th>Título</th><th>Autor</th><th>Precio</th></tr>
      
      <xsl:for-each select="libreria/libro">
      <tr>
          <xsl:choose>
            <xsl:when test="precio &lt; 12.50">
              <td class="precio1"><xsl:value-of select="titulo"/></td>
              <td class="precio1"><xsl:value-of select="autor"/></td> 
              <td class="precio1"><xsl:value-of select="precio"/></td>               
            </xsl:when>
            <xsl:when test="precio &lt; 25.50">
              <td class="precio2"><xsl:value-of select="titulo"/></td>
              <td class="precio2"><xsl:value-of select="autor"/></td>
              <td class="precio2"><xsl:value-of select="precio"/></td>   
            </xsl:when>     
            <xsl:otherwise>
              <td class="precio3"><xsl:value-of select="titulo"/></td>
              <td class="precio3"><xsl:value-of select="autor"/></td>
              <td class="precio3"><xsl:value-of select="precio"/></td>   
            </xsl:otherwise>   
        </xsl:choose>
      </tr>
      </xsl:for-each>
    </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
