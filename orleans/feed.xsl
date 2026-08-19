<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" encoding="utf-8" indent="yes"/>
<xsl:template match="/atom:feed">
<html lang="fr">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title><xsl:value-of select="atom:title"/></title>
<style>
  body{font-family:ui-sans-serif,system-ui,-apple-system,"Segoe UI",Roboto,Arial,sans-serif;
       max-width:760px;margin:2rem auto;padding:0 1.5rem;color:#14161B}
  h1{color:#1A3A6B;font-size:1.3rem}
  .encart{background:#EEF3FB;border:1px solid #E3E6EC;border-radius:10px;
          padding:1rem 1.2rem;margin-bottom:1.5rem;font-size:.92rem}
  .encart a{color:#1A3A6B;font-weight:600}
  article{border-bottom:1px solid #E3E6EC;padding:1rem 0}
  article h2{margin:0 0 .3rem;font-size:1.02rem}
  article a{color:#1A3A6B;text-decoration:none}
  article a:hover{text-decoration:underline}
  .date{color:#5B6270;font-size:.8rem}
  .resume{margin:.4rem 0 0;font-size:.9rem;color:#333}
</style>
</head>
<body>
<h1><xsl:value-of select="atom:title"/></h1>
<div class="encart">
  Ceci est un <strong>flux RSS/Atom</strong>, pas une page faite pour être lue
  directement ici. Copiez l'URL affichée dans la barre d'adresse de votre
  navigateur dans un lecteur RSS (Feedly, Inoreader, l'app Mail…) pour être
  averti automatiquement à chaque nouvelle offre.
  <br/><br/>
  <a href="{atom:link[@rel='alternate']/@href}">← Retour à la page du campus</a>
</div>
<xsl:for-each select="atom:entry">
<article>
  <h2><a href="{atom:link/@href}"><xsl:value-of select="atom:title"/></a></h2>
  <div class="date"><xsl:value-of select="substring(atom:published,1,10)"/></div>
  <p class="resume"><xsl:value-of select="atom:summary"/></p>
</article>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
