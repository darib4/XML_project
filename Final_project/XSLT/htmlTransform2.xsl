<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>

    <!-- Коренен шаблон за трансформиране на категории и продукти в HTML. -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Категории и продукти</title>
            </head>
            <body>
                <h1>Категории и продукти</h1>
                <!-- Цикъл за обхождане на всички категории. -->
                <xsl:for-each select="//category">
                    <h2>Категория: <xsl:value-of select="categoryName"/></h2>
                    <ul>
                        <!-- Обхождаме продуктите във всяка категория с вложен цикъл. -->
                        <xsl:for-each select="product">
                            <li>
                                <strong><xsl:value-of select="productName"/></strong>
                                (Цена: <xsl:value-of select="price"/> лв.) -
                                <xsl:value-of select="description"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
