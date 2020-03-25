<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="boilerplate.xsl"/>
<xsl:output encoding="iso-8859-1" indent="yes"/>

<xsl:variable name="company-name" select="'BVR India Limited'"/>

<xsl:template match="/">
<c><xsl:value-of select="$copyright"/></c>
</xsl:template>

</xsl:stylesheet>

