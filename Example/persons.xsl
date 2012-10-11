<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl" exclude-result-prefixes="php">

<xsl:include href="_layout.xsl" />

  <xsl:template match="template">

    <article>
      <header>
        <h2>The People</h2>
      </header>
      <section>
        <table border="1">
          <tr>
            <th>First Name</th>
            <th>Name</th>
            <td>Description</td>
          </tr>

          <xsl:for-each select="persons">
            <tr>
              <td><xsl:value-of select="firstname" /></td>
              <td><xsl:value-of select="name" /></td>
              <td><xsl:value-of select="php:function('PH7\Framework\Layout\Tpl\Engine\PHXSLT\PHXSLT::escape', string(description), 1)" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </section>
    </article>

  </xsl:template >
</xsl:stylesheet>
