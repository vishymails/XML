<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
      <xsl:for-each select="/TVGuide/Channel">

<h1>        <xsl:value-of select="Name" /><br /></h1>
     

   <xsl:for-each select="Program"> <br />
    
    
              <xsl:value-of select="Duration" /><br />
              <xsl:value-of select="time" /><br />






              <xsl:for-each select="CastList/CastMember">
                      <xsl:value-of select="Actor/Name" /><br />
                </xsl:for-each>


      </xsl:for-each>
      </xsl:for-each>



<table border="4">

      <xsl:for-each select="/TVGuide/Channel">
<tr><td>
    <xsl:value-of select="Name" /></td>
    
</tr>


      </xsl:for-each>

</table>







    
</xsl:template>

</xsl:stylesheet>