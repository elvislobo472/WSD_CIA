<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/projects">
        <html>
            <head>
                <title>Projects List</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Projects List</h2>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Technologies</th>
                    </tr>
                   
                    <xsl:for-each select="project">
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
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
