<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:template match="libreria">
        <xsl:for-each select="libro">
            <xsl:sort select="titulo" order="ascending"/>
            <xsl:value-of select="titulo"/><br/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>