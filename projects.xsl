<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

   
    <xsl:template match="/">
        <html lang="en">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Projects</title>
        
            <style>
                body {
                    background-color: #f4f4f4;
                    color: #333;
                }
                h1 {
                    text-align: center;
                    padding: 20px;
                    color: #333;
                }
                table {
                    width: 100%;
                    border-collapse: collapse;
                    margin: 20px auto;
                    background-color: #fff;
                    border-radius: 8px;
                }
                th, td {
                    padding: 15px;
                    text-align: left;
                    border: 1px solid #ccc;
                }
                th {
                    background-color: #c97d87;
                    color: white;
                }
                .container {
                    width: 90%;
                    margin: 0 auto;
                }
            </style>
        </head>
        <body>
            <header>
                <h1>My Projects</h1>
            </header>
            <div class="container">
                <table>
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Technologies</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="projects/project">
                            <tr>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="description"/></td>
                                <td>
                                    <xsl:for-each select="technologies/technology">
                                        <xsl:value-of select="."/>
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
