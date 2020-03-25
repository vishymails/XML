<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  exclude-result-prefixes="xlink" version="1.0">
  <xsl:output method="xml" omit-xml-declaration="yes" />

  <xsl:template match="a">
    <author xlink:type="simple" xlink:href="{@href}">
      <xsl:apply-templates />
    </author>
  </xsl:template>

  <xsl:template match="p">
    <para>
      <xsl:apply-templates />
    </para>
  </xsl:template>

</xsl:stylesheet>