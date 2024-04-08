<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Noticias</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #202FB0;
            color: white;
          }
          .Deportes { color: yellow; }
          .Economía { color: red; }
          .Cultura { color: green; }
          .Política { color: blue; }
        </style>
      </head>
      <body>
        <h3>Noticias</h3>
        <table>
          <tr>
            <th>Title</th>
            <th>Link</th>
            <th>Description</th>
            <th>Category</th>
            <th>PubDate</th>
            <th>Author</th>
          </tr>
          <xsl:apply-templates select="//item">
            <xsl:sort select="pubDate" order="descending"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="item">
    <tr>
      <td>
        <xsl:attribute name="class">
          <xsl:choose>
            <xsl:when test="category = 'Deportes'">Deportes</xsl:when>
            <xsl:when test="category = 'Economía'">Economía</xsl:when>
            <xsl:when test="category = 'Cultura'">Cultura</xsl:when>
            <xsl:when test="category = 'Política'">Política</xsl:when>
            <xsl:otherwise>Default</xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
        <xsl:value-of select="title"/>
      </td>
      <td><a href="{link}"><xsl:value-of select="link"/></a></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="category"/></td>
      <td><xsl:value-of select="pubDate"/></td>
      <td><xsl:value-of select="author"/></td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
