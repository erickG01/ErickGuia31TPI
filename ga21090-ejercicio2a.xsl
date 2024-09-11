<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>País: El Salvador</title>
                <link rel="stylesheet" type="text/css" href="ga21090-ejercicio2a.css" />
            </head>
            <body>
                <h1>Información de El Salvador</h1>
                <p>Moneda: <xsl:value-of select="/pais/@moneda"/></p>
                <p>Código Telefónico: <xsl:value-of select="/pais/@codigoTelefonico"/></p>
                <p>Idioma: <xsl:value-of select="/pais/@idioma"/></p>
                <p>Área Territorial: <xsl:value-of select="/pais/@areaTerritorial"/></p>

                <h2>Departamentos</h2>
                <ul>
                    <xsl:for-each select="/pais/departamento">
                        <li>
                            <strong><xsl:value-of select="@nombre"/></strong> (Cabecera: <xsl:value-of select="cabecera"/>, Habitantes: <xsl:value-of select="habitantes"/>)
                        </li>
                    </xsl:for-each>
                </ul>

                <a href="index.html">Volver a mi página HTML</a>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>



