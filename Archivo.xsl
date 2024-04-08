<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="transformacion.xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          .deportes { color: yellow; }
          .economia { color: red; }
          .cultura { color: green; }
          .politica { color: blue; }
        </style>
      </head>
      <body>
        <xsl:apply-templates select="//item">
          <xsl:sort select="substring(pubDate, 1, 10)" order="descending"/>
        </xsl:apply-templates>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="item">
    <div class="{category}">
      <h2><xsl:value-of select="title"/></h2>
      <p>Fecha de publicación: <xsl:value-of select="substring(pubDate, 1, 10)"/></p>
      <p>Autor: <xsl:value-of select="author"/></p>
      <p><a href="{link}">Enlace</a></p>
      <p><xsl:value-of select="description"/></p>
      <hr/>
    </div>
  </xsl:template>
</xsl:stylesheet>



