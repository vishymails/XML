<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>
<xsl:output indent="yes"/>
<xsl:template match="book">
  <book>
	<xsl:for-each select="@*">
	 <xsl:element name="{name()}">
	    <xsl:value-of select="."/>
	 </xsl:element>
	</xsl:for-each>
  </book>
</xsl:template>
</xsl:transform>


