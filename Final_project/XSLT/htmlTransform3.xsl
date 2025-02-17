<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Магазини</title>
            </head>
            <body>
                <h1>Списък на магазини</h1>
                <!-- Обхождане всички магазини -->
                <xsl:for-each select="//groceryStore">
                    <div>
                        <h2><xsl:value-of select="storeInfo/storeName"/></h2>
                        <p>Град: <xsl:value-of select="storeInfo/location/city"/></p>
                        <p>Адрес: <xsl:value-of select="storeInfo/location/address"/></p>
                        <p>Телефон: <xsl:value-of select="storeInfo/contactNumber"/></p>
                    </div>
                    <hr/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
