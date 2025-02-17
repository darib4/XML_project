<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>

    <!-- Коренен шаблон за създаване на XML с филтрирани продукти с цена над 3.00. -->
    <xsl:template match="/">
        <products>
            <!-- Филтрираме продуктите по цена и обхождаме съответстващите продукти. -->
            <xsl:for-each select="//product[price > 3.00]">
                <product>
                    <name><xsl:value-of select="productName"/></name>
                    <price><xsl:value-of select="price"/></price>
                </product>
            </xsl:for-each>
        </products>
    </xsl:template>
</xsl:stylesheet>
