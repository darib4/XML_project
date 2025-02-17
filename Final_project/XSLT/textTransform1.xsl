<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" indent="no"/>

    <!-- Коренен шаблон за генериране на текстово съдържание със списък на магазини. -->
    <xsl:template match="/">
        Списък на магазини:
        <!-- Обхождаме информацията за всеки магазин. -->
        <xsl:for-each select="//storeInfo">
            - Магазин: <xsl:value-of select="storeName"/>, Град: <xsl:value-of select="location/city"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
