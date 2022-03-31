<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejemplo XSLT, página 2 de la US</title>
            </head>
            <body>
                <h1>Las ciudades chic de España:</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ciudad/hijo_1">
        <h2>
            <xsl:value-of select="." /> <!--imprime todos los elementos hijos del nodo actual-->
        </h2>
    </xsl:template>
    
</xsl:stylesheet>