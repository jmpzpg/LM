<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <!--<xsl:variable name="total" select="0"/>-->
  <xsl:template match="costes">
    <!--<xsl:variable name="acumulador" select="number(detalle/coste) + number($total)"/>-->
    <!--<xsl:param name="sumatorio" select="0"></xsl:param>-->
    <html>
      <head>
        <meta charset="utf-8"/>
        <title>Costes estipulados</title>
        <link rel="stylesheet" type="text/css" href="Ejercicio07.css"></link>
      </head>
      <body>
        <h1>Costes totales</h1>
        <table>
          <caption> Período <xsl:value-of select="@periodo"/> </caption>
          <thead>
            <tr>
              <th>Denominación</th>
              <th>Ciudad</th>
              <th>Fecha</th>
              <th>Evaluación</th>
              <th>Coste (€)</th>
            </tr>
          </thead>
          <tbody>
            <tr> 
              <xsl:apply-templates>
                <!--<xsl:with-param name="sumatorio" select="$sumatorio+detalle/coste"/>-->
              </xsl:apply-templates> 
            </tr>
          </tbody>
          <tfoot>
            <td colspan="4">TOTAL</td>
            <td> <xsl:value-of select="sum(detalle/coste)"/> </td>
            <!--<td> <xsl:value-of select="$sumatorio"/> </td>-->
            <!--<td> <xsl:value-of select="$acumulador"/> </td>-->
          </tfoot>
        </table>
      </body>
    </html>
    
  </xsl:template>  
  
  <xsl:template match="detalle">
    <!--<xsl:variable name="precio" select="coste"/>-->
    
    <tr>
      <td> <xsl:value-of select="denominacion"/> </td>
      <td> <xsl:value-of select="ciudad"/> </td>
      <td> <xsl:value-of select="fecha"/> </td>
      <td> <xsl:value-of select="evaluacion"/> </td>
      <td> <xsl:value-of select="coste"/> </td>
    </tr>
    
    
    <!--<xsl:variable name="acumulador" select="number(coste) + number($total)"/>-->
    <!--<xsl:value-of select="$total+coste"/>-->
  </xsl:template>
  
  
</xsl:stylesheet>