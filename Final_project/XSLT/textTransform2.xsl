<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="no"/>

    <!-- Коренен шаблон за текстово извеждане на категории и продукти. -->
    <xsl:template match="/">
        Категории и продукти:
        <!-- Цикъл за обхождане на всички категории. -->
        <xsl:for-each select="//category">
            Категория: <xsl:value-of select="categoryName"/>
            <!-- Вложен цикъл за продуктите във всяка категория. -->
            <xsl:for-each select="product">
                - <xsl:value-of select="productName"/> (Цена: <xsl:value-of select="price"/>)
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
