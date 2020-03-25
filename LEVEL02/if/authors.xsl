<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>

<xsl:template match="book">
   <xsl:value-of select="title"/>
   by <xsl:for-each select="author">
      <xsl:value-of select="."/>
      <xsl:if test="position()!=last()">, </xsl:if>
      <xsl:if test="position()=last()-1">and </xsl:if>
</xsl:for-each>
</xsl:template>

</xsl:transform>
