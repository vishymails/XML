<html xsl:version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body>
<h1>Please select a country:</h1>

<form name="form1" method="post">

<xsl:for-each select="//country">
 <input type="checkbox">    <xsl:value-of select="@name"/>  
	    <xsl:attribute name="id"><xsl:value-of select="@name"/></xsl:attribute>
    	    <xsl:attribute name="value"><xsl:value-of select="@name"/></xsl:attribute>

</input>
<br/>
</xsl:for-each>

<button type="submit" name="s1">click here</button>

</form>

</body>
</html>
