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

<xsl:template match="/">
	<xsl:variable name="reader"
		select="BufferedReader:new( FileReader:new($filename))"/>
	<xsl:call-template name="read-addresses">
		<xsl:with-param name="reader" select="$reader"/>
	</xsl:call-template>
</xsl:template>

<xsl:template name="read-addresses">
	<xsl:param name="reader"/>
	<xsl:variable name="line1" select="BufferedReader:readLine($reader)"/>
	<xsl:if test="$line1 != '****'">
		<xsl:variable name="line2" select="BufferedReader:readLine($reader)"/>
		<xsl:variable name="line3" select="BufferedReader:readLine($reader)"/>
		<xsl:variable name="line4" select="BufferedReader:readLine($reader)"/>
		<xsl:variable name="line5" select="BufferedReader:readLine($reader)"/>
		<label>
			<address>
				<xsl:value-of select="$line3"/><br/>
				<xsl:value-of select="$line4"/><br/>
			</address>
			<recipient>Attn: <xsl:value-of select="$line2"/></recipient>
		</label>
		<xsl:call-template name="read-lines">
			<xsl:with-param name="reader" select="$reader"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>
</xsl:stylesheet>