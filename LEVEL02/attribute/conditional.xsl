<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="schema-version" select="4.0"/>

<xsl:template match="/">
<promotion>
   <xsl:variable name="attname">
       <xsl:choose>
       <xsl:when test="$schema-version &lt; 3.0">code</xsl:when>
       <xsl:otherwise>reason-code</xsl:otherwise>
       </xsl:choose>
   </xsl:variable>
   <xsl:attribute name="{$attname}">17</xsl:attribute>
</promotion>

</xsl:template>
</xsl:stylesheet>
