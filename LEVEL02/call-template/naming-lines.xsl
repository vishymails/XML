<xsl:transform
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 version="1.0"
>

<xsl:variable name="speakers" select="//SPEAKER"/>

<xsl:template name="contains-name">
   <xsl:param name="line"/>
   <xsl:variable name="line1" 
        select="translate($line, 'abcdefghijklmnopqrstuvwxyz.,:?!;',
                    'ABCDEFGHIJKLMNOPQRSTUVWXYZ      ')"/>
   <xsl:variable name="line2" select="concat(normalize-space($line1), ' ')"/>
   <xsl:variable name="first" select="substring-before($line2,' ')"/>
   <xsl:choose>
   <xsl:when test="$first">
      <xsl:choose>
      <xsl:when test="$speakers[.=$first]">true</xsl:when>
      <xsl:otherwise>
         <xsl:variable name="rest" select="substring-after($line2,' ')"/>    
         <xsl:call-template name="contains-name">
            <xsl:with-param name="line" select="$rest"/>
         </xsl:call-template>
      </xsl:otherwise>
      </xsl:choose>
   </xsl:when>
   <xsl:otherwise>false</xsl:otherwise>
   </xsl:choose>
</xsl:template>

<xsl:template match="/">

<xsl:for-each select="//LINE">
    <xsl:variable name="contains-name">
        <xsl:call-template name="contains-name">
            <xsl:with-param name="line" select="."/>
        </xsl:call-template>
    </xsl:variable>
    <xsl:if test="$contains-name='true'">
        <xsl:copy-of select="."/>;
    </xsl:if>
</xsl:for-each>
</xsl:template>


</xsl:transform>
