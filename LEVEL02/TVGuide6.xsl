<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
<style>
.c2{text-decoration:underline}
#one{background:brown;font-size:20}
body{background:beige;font-size:20}

</style>
      <title>TV Guide</title>
      <link rel="stylesheet" href="TVGuide.css" />
      <script type="text/javascript">
        function toggle(element) {
          if (element.style.display == 'none') {
            element.style.display = 'block';
          } else {
            element.style.display = 'none';
          }
        }
	function a()
	{
		alert("hello");
	}

      </script>
    </head>

    <body onLoad="a()">
      <h1>TV Guide</h1>
<p id="one" class="c2">  <xsl:apply-templates select="/TVGuide/Channel/bvr" /></p><br />
  <xsl:apply-templates select="/TVGuide/Channel/bvr/nnn" />
      <xsl:apply-templates select="/TVGuide/Channel" />
    </body>
  </html>
</xsl:template>

<xsl:template match="Channel">
  <h2 class="channel"><xsl:apply-templates select="Name" /></h2>
  <xsl:apply-templates select="Program" />

</xsl:template>


<xsl:template match="Program">
  <div>
    <p>
      <span class="date"><xsl:apply-templates select="Start" /></span>
      <br />
      <span class="title"><xsl:apply-templates select="Series" /></span>
      <br />
      <xsl:apply-templates select="Description" />
      <span onclick="toggle({Series}Cast);">[Cast]</span>
    </p>
    <div id="{Series}Cast" style="display: none;">
      <ul class="castlist">
        <xsl:apply-templates select="CastList/CastMember" />
      </ul>
    </div>
  </div>
</xsl:template>

<xsl:template match="CastMember">
  <li>
    <span class="character">
      <xsl:apply-templates select="Character" />
    </span>
    <span class="actor">
      <xsl:apply-templates select="Actor" />
    </span>
  </li>
</xsl:template>

</xsl:stylesheet>