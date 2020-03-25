
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:output method="xml" omit-xml-declaration="yes" indent="no" />
  
  <xsl:template match="employee">
    <client>
      <xsl:apply-templates />
    </client>
  </xsl:template>
</xsl:stylesheet>