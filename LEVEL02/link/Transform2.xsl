<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:output method="html" />
  <xsl:template match="story">
    <html>
      <body>
        <h1>Table of Contents</h1>
        <xsl:apply-templates select="chapter/title" mode="toc" />
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>
  <xsl:template match="chapter/title">
    <h2>
      <a name="{generate-id()}" />
      <xsl:apply-templates />
    </h2>
  </xsl:template>
  <xsl:template match="chapter/title" mode="toc">
    <p>
      <a href="#{generate-id()}">
        <xsl:apply-templates />
      </a>
    </p>
  </xsl:template>

  <xsl:template match="para">
    <p>
      <xsl:apply-templates />
    </p>
  </xsl:template>

  <xsl:template match="story/title">
    <h1>
      <xsl:apply-templates />
    </h1>
  </xsl:template>
</xsl:stylesheet>