<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Био Магазин "Здраве"</title>
                <style>
                    body {
                    font-family: Arial, sans-serif;
                    margin: 20px;
                    }
                    h1 {
                    text-align: center;
                    }
                    table {
                    border-collapse: collapse;
                    width: 100%;
                    margin: 20px 0;
                    }
                    th, td {
                    border: 1px solid #ddd;
                    padding: 8px;
                    text-align: left;
                    }
                    th {
                    background-color: #f4f4f4;
                    }
                </style>
            </head>
            <body>
                <h1>Био Магазин "Здраве"</h1>
                <h2>Информация за магазина</h2>
                <table>
                    <tr>
                        <th>Име на магазина</th>
                        <td><xsl:value-of select="groceryStore/storeInfo/storeName"/></td>
                    </tr>
                    <tr>
                        <th>Град</th>
                        <td><xsl:value-of select="groceryStore/storeInfo/location/city"/></td>
                    </tr>
                    <tr>
                        <th>Адрес</th>
                        <td><xsl:value-of select="groceryStore/storeInfo/location/address"/></td>
                    </tr>
                    <tr>
                        <th>Телефон</th>
                        <td><xsl:value-of select="groceryStore/storeInfo/contactNumber"/></td>
                    </tr>
                </table>

                <h2>Категории</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Име на категория</th>
                            <th>Подкатегории</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="groceryStore/categories/category">
                            <tr>
                                <td><xsl:value-of select="name"/></td>
                                <td>
                                    <xsl:for-each select="subcategories/subcategory">
                                        <xsl:value-of select="name"/>
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Продукти</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Име на продукт</th>
                            <th>Категория</th>
                            <th>Цена (лв.)</th>
                            <th>Описание</th>
                            <th>Калории</th>
                            <th>Мазнини (г)</th>
                            <th>Протеини (г)</th>
                            <th>Въглехидрати (г)</th>
                            <th>Наличен</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="groceryStore/products/product">
                            <tr>
                                <td><xsl:value-of select="productName"/></td>
                                <td><xsl:value-of select="categoryName"/></td>
                                <td><xsl:value-of select="price"/></td>
                                <td><xsl:value-of select="description"/></td>
                                <td><xsl:value-of select="nutritionalInformation/calories"/></td>
                                <td><xsl:value-of select="nutritionalInformation/fats"/></td>
                                <td><xsl:value-of select="nutritionalInformation/proteins"/></td>
                                <td><xsl:value-of select="nutritionalInformation/carbohydrates"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="@available='true'">Да</xsl:when>
                                        <xsl:otherwise>Не</xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
