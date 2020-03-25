<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>
<xsl:template match="SCENE">
<html><body>
   <xsl:apply-templates select="TITLE"/>
   <xsl:variable name="speakers" select="//SPEAKER[not(.=preceding::SPEAKER)]"/>
   <h2>Cast: <xsl:apply-templates select="$speakers" mode="cast-list"/></h2>
   <xsl:apply-templates select="*[not(self::TITLE)]"/>
</body></html>
</xsl:template>

<xsl:template match="SPEAKER" mode="cast-list">
    <xsl:value-of select="."/>
    <xsl:if test="not(position()=last())">, </xsl:if>
</xsl:template>

<xsl:template match="TITLE">
<h1><xsl:apply-templates/></h1>
</xsl:template>

<xsl:template match="STAGEDIR">
<i><xsl:apply-templates/></i>
</xsl:template>

<xsl:template match="SPEECH">
<p><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="SPEAKER">
<b><xsl:apply-templates/></b><br/>
</xsl:template>

<xsl:template match="LINE">
<xsl:apply-templates/><br/>
</xsl:template>

</xsl:transform>	
