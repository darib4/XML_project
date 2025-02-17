<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>

    <!-- Коренен шаблон, който съвпада с кореновия елемент на XML документа. -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Продукти</title>
            </head>
            <body>
                <h1>Списък на продуктите</h1>
                <table border="1">
                    <tr>
                        <th>Продукт</th>
                        <th>Цена</th>
                        <th>Описание</th>
                    </tr>
                    <xsl:for-each select="//product">
                        <tr>
                            <td><xsl:value-of select="productName"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
