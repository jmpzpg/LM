<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="poema">
        Fecha: <xsl:value-of select="@fecha"/>,
        Lugar: <xsl:value-of select="@lugar"/>
    </xsl:template>
    
    <xsl:template match="poema">
        Versos: <xsl:apply-templates select="verso"/>
        Título: <xsl:apply-templates select="titulo"/>
    </xsl:template>
    
    <xsl:template match="/">
        Contenidos:
        <ul><xsl:apply-templates></xsl:apply-templates></ul>
    </xsl:template>
    
    <xsl:template match="poema">
        <li><xsl:value-of select="titulo"/></li>
    </xsl:template>
    
</xsl:stylesheet>