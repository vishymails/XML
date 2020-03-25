<?xml version="1.0" encoding="ISO-8859-1"?>
<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xsl:version="1.0">
  <head><title>Poem Example</title></head>
  <body>
  
  <xsl:value-of select="/poem/title"/>
  <br/>
  <xsl:for-each select="/poem/stanza/line">
	<xsl:value-of select="."/>
	<br/>
  </xsl:for-each>
  
  </body>
  </html>