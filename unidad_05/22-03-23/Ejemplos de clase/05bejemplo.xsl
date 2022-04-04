<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {width:90%;}
                    td {width: 85%;}
                    tr:first-child td { text-align:center; border:2px magenta solid; background-color:cyan; padding: 8px;}                    
                    <!--tr:nth-child(4n+1) { text-align:center; border:2px red solid; background-color:yellow; padding: 8px;}-->
                    
                </style>
            </head>
            <body>
                <h1>Catálogo:</h1>
                <xsl:apply-templates/>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="producto">
        <table>
            <tr>
                <td>Código: <xsl:value-of select="@codventa"/></td>
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
            
        </table>
    </xsl:template>
    
</xsl:stylesheet>