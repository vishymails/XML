<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
<script type="text/javascript">
function a()
{
	alert("change");
}
function b()
{
	alert("blur");
}

function c()
{
	alert("focus");
}

</script>

</head>
<body>
<form>
<input type="text" name="n1" onFocus="c()"/>
<input type="text" name="n2" onChange="a()"/>
<input type="text" name="n3" onBlur="b()"/>
</form>
</body>
</html>

    
</xsl:template>

</xsl:stylesheet>