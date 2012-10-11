<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl" exclude-result-prefixes="php">

<!-- Output in HTML5 with doctype-system="about:legacy-compat" -->
<xsl:output method="xml" omit-xml-declaration="yes" doctype-system="about:legacy-compat" encoding="utf-8" />

  <xsl:include href="head.inc.xsl" />

  <xsl:template match="/">

    <html lang="{$lang}">
    <head>
      <xsl:call-template name="metatags" />
      <xsl:call-template name="css" />
    </head>

    <body>

      <div id="container">

        <header>
          <xsl:element name="h1"><xsl:value-of select="$heading1" /></xsl:element>
        </header>

        <section>
            <xsl:apply-templates />
        </section>

        <footer>
          <p>Powered By <strong>
              <a>
                  <xsl:attribute name="href"><xsl:value-of select="$copyright-link" /></xsl:attribute>
                  <xsl:attribute name="title"><xsl:value-of select="$copyright-title-link" /></xsl:attribute>
                  <xsl:value-of select="$copyright-title-link" />
              </a>
              </strong> &#169; 2012 - <xsl:value-of select="php:function('date', 'Y')" />. &#160; &#8226; &#160; This website is valid <a href="http://html5.org"><abbr title="HyperText Markup Language 5">HTML5</abbr></a></p>
        </footer>
      </div>

    </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
