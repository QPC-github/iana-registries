<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:iana="http://www.iana.org/assignments" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl"/>

  <xsl:template name="iana:record_header">
    <xsl:choose> 
      
      
      <xsl:when test="@id = 'ospfv2-parameters-1' or @id = 'ospfv2-parameters-3' or @id = 'ospfv2-parameters-5' or @id = 'ospfv2-parameters-7' or @id = 'ospfv2-parameters-11' or @id = 'ospfv2-parameters-13'">
        <tr><th>Value</th><th>Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ospfv2-parameters-9'">
        <tr><th>Type Value</th><th>Capabilities</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ospfv2-parameters-10'">
        <tr><th>Bit</th><th>Capabilities</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'ospfv2-parameters-14'">
        <tr><th>Bit</th><th>Capability Description</th><th>Reference</th></tr>
      </xsl:when>
      <xsl:when test="@id = 'instance-ids'">
        <tr><th>Value</th><th>Designation</th><th>Reference</th></tr>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'ospfv2-parameters-1' or ../@id = 'ospfv2-parameters-3' or ../@id = 'ospfv2-parameters-5' or ../@id = 'ospfv2-parameters-7' or ../@id = 'ospfv2-parameters-9' or ../@id = 'ospfv2-parameters-10' or ../@id = 'ospfv2-parameters-11' or ../@id = 'ospfv2-parameters-13' or ../@id = 'instance-ids' or ../@id = 'ospfv2-parameters-14'">
        <tr>
          <td align="center"><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
