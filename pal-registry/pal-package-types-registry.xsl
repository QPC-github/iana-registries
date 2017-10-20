<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      <xsl:when test="@id = 'package-types'">
        <tr><th>Package Number</th><th>Package Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'sub-tlv-types'">
        <tr><th>Type</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'flags'">
        <tr><th>Bit</th><th>Name</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
    <xsl:when test="../@id = 'package-types'">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:apply-templates select="iana:description"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
    </tr>
    </xsl:when>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
