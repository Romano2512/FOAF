<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"
        doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>FOAF to XHTML</title>
      </head>
      <body>
        <h1>Amis FOAF</h1>
        <xsl:apply-templates select="//foaf:Person"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="foaf:Person">
    <h2><xsl:value-of select="foaf:name"/></h2>
    <p>Nom : <xsl:value-of select="foaf:name"/></p>
    <p>Adresse e-mail : <a href="{foaf:mbox/@rdf:resource}"><xsl:value-of select="foaf:mbox/@rdf:resource"/></a></p>
    <p>Page d'accueil : <a href="{foaf:homepage/@rdf:resource}"><xsl:value-of select="foaf:homepage/@rdf:resource"/></a></p>
    <p>Genre : <xsl:value-of select="foaf:gender"/></p>
    <p>Date de naissance : <xsl:value-of select="foaf:birthDate"/></p>
    <p>Localisation : <xsl:value-of select="foaf:based_near/@rdf:resource"/></p>
  </xsl:template>
</xsl:stylesheet>
