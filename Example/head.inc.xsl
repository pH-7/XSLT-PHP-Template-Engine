<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template name="metatags">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><xsl:value-of select="$title" /></title>
		<meta name="description" content="{$description}" />
		<meta name="keywords" content="{$keywords}" />
		<meta name="robots" content="index, follow, all" />
		<link rel="icon" type="image/x-icon" href="http://ph-7.github.com/favicon.ico" />
		<meta name="author" content="Pierre-Henry Soria" />
    </xsl:template>
    
    <xsl:template name="css">
		<link rel="stylesheet" type="text/css" href="style.css" />
    </xsl:template>

</xsl:stylesheet>
