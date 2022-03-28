<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
    
      <head>
      
      </head>
      
      <body>
        <xsl:apply-templates select="bib"/>
      </body>    
      
    </html>
  
  </xsl:template>
  
  <xsl:template match="bib">
    <table>
      <tr><th>Precio</th><th>Nombre</th><th>>Año</th></tr>
      <xsl:apply-template select="libro">
        <xsl:sort select="precio" order="ascending" data-type="number"/>
      </xsl:apply-template>
    </table>
  </xsl:template>
  
  <xsl:template match="libro">
      <tr>
        <td><xsl:value-of select="precio" </td>
        <td>Nombre</td>
        <td>>Año</td>
      </tr>
      <xsl:apply-template select="libro"/>
  </xsl:template>
  
  
</xsl:stylesheet>
