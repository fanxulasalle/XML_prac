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
          <xsl:for-each select="//item">
            <xsl:sort select="pubDate" order="descending"/>
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><a href="{link}"><xsl:value-of select="link"/></a></td>
              <td><xsl:value-of select="description"/></td>
              <td><xsl:value-of select="category"/></td>
              <td><xsl:value-of select="pubDate"/></td>
              <td><xsl:value-of select="author"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
