<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>

    <!-- Коренен шаблон за създаване на XML обобщение на магазини и техните локации. -->
    <xsl:template match="/">
        <stores>
            <!-- Обхождаме информацията за всеки магазин. -->
            <xsl:for-each select="//storeInfo">
                <store>
                    <name><xsl:value-of select="storeName"/></name>
                    <city><xsl:value-of select="location/city"/></city>
                </store>
            </xsl:for-each>
        </stores>
    </xsl:template>
</xsl:stylesheet>
