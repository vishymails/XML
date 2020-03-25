<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>
<xsl:template name="max">
<xsl:param name="list"/>
<xsl:choose>
<xsl:when test="$list">
   <xsl:variable name="first" select="count($list[1]/LINE)"/>
   <xsl:variable name="max-of-rest">
      <xsl:call-template name="max">
         <xsl:with-param name="list" select="$list[position()!=1]"/>
      </xsl:call-template>
   </xsl:variable>
   <xsl:choose>
   <xsl:when test="$first &gt; $max-of-rest">
      <xsl:value-of select="$first"/>
   </xsl:when>
   <xsl:otherwise>
      <xsl:value-of select="$max-of-rest"/>
   </xsl:otherwise>
   </xsl:choose>
</xsl:when>
<xsl:otherwise>0</xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template match="/">
Longest speech is <xsl:text/>
	<xsl:call-template name="max">
        <xsl:with-param name="list" select="//SPEECH"/>
	</xsl:call-template>
<xsl:text/> lines.  
</xsl:template>


</xsl:transform>
