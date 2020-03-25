<xsl:stylesheet    
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"    
	version="1.1"   
	xmlns:FileReader="java:java.io.FileReader"
	xmlns:BufferedReader="java:java.io.BufferedReader"
	xmlns:System="java:java.lang.System"
	exclude-result-prefixes="FileReader BufferedReader System">

<xsl:script language="java" implements-prefix="FileReader"  
	src="java:java.io.FileReader"/>

<xsl:script language="java" implements-prefix="BufferedReader"  
	src="java:java.io.BufferedReader"/>

<xsl:script language="java" implements-prefix="System"  
	src="java:java.lang.System"/>

<xsl:param name="filename"/>

<xsl:template match="/">
<out>
	<xsl:variable name="reader" 
		select="BufferedReader:new( FileReader:new($filename))"/>
	<xsl:call-template name="read-lines">
		<xsl:with-param name="reader" select="$reader"/>
	</xsl:call-template>
</out>
</xsl:template>

<xsl:template name="read-lines">
	<xsl:param name="reader"/>
	<xsl:variable name="line" select="BufferedReader:readLine($reader)"/>
	<xsl:if test="System:identityHashCode($line) != 0">
		<xsl:value-of select="$line"/><br/>
		<xsl:call-template name="read-lines">
			<xsl:with-param name="reader" select="$reader"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>
</xsl:stylesheet>