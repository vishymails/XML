<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<table border="4" bordercolor="green"><tr><th>Name</th><th>Id</th>
<th>Age</th><th>Salary</th>
<th>Shares</th>
</tr>

<xsl:apply-templates select="/EMPLOYEES/EMPLOYEE" />
</table>
</xsl:template>



<xsl:template match="EMPLOYEE">
<tr>
<td>
<xsl:value-of select="NAME" /></td><td>
<xsl:value-of select="ID" /></td><td>
<xsl:value-of select="AGE" /></td><td>
<xsl:value-of select="SALARY" /></td><td>
<xsl:value-of select="SHARES" /></td>
</tr>





</xsl:template>
</xsl:stylesheet>


