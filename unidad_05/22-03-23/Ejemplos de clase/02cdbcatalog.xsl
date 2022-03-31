<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Coleeción de CDs</title>
                <style>
                    table { border:2px black solid;}
                    tr { background-color: #9acd32;}
                    th{background-color: yellow; padding: 5px 10px;}
                    td{padding: 4px 10px;}
                    #pais {text-align:center;}
                    #precio {text-align:right;}
                    #color_usa{background-color: blue; color: white;}
                    #color_uk{background-color: cyan; color: black;}
                </style>
            </head>
            <body>
                <h2>Mi colección de CDs:</h2>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Artista</th>
                        <th>País</th>
                        <th>Precio</th>
                    </tr>
                    <!--<xsl:for-each select="catalog/cd[country!='UK']">-->
                    <xsl:for-each select="catalog/cd">
                        <xsl:variable name="bloque_tabla">
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="artist"/>
                            </td>
                            <td id="pais">
                                <xsl:value-of select="country"/>
                            </td>
                            <td id="precio">
                                <xsl:value-of select="price"/>
                            </td>
                        </xsl:variable>
                        <xsl:sort select="artist"/>
                        <xsl:choose>
                            <xsl:when test="country='USA'">
                                <tr id="color_usa">
                                    <xsl:copy-of select="$bloque_tabla"/>
                                </tr>
                            </xsl:when>
                            <xsl:when test="country='UK'">
                                <tr id="color_uk">
                                    <xsl:copy-of select="$bloque_tabla"/>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <xsl:copy-of select="$bloque_tabla"/>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
