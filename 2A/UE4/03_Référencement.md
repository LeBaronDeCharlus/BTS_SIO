# Notes

## Référencement

### Référencement naturel (SEO)

On veut être le premier site quand on utilise un moteur de recherche.

Moteur de recherche :
- Google
- Bing
- Yahoo
- Qwant
- DuckDuckGo

#### Le temps de chargement de la page

Plus la page met du temps à charger moins vous êtes bien référencé.

#### Le rebond

C'est quand un utilisateur va sur un site et se barre pour aller sur un autre.

#### Les balise Html

- `<title>` : le titre de la page
- `<meta name="description" content="description de la page">` : la description de la page  

```html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="description de la page">
    <title>Titre de la page</title>
    <favicon href="favicon.ico">
</head>
</html>
```

#### Les balises sémantiques

- `<header>` : l'en-tête de la page
- `<nav>` : la navigation de la page
- `<main>` : le contenu principal de la page
- `<section>` : une section de la page
- `<article>` : un article de la page
- `<aside>` : un contenu à part de la page
- `<footer>` : le pied de page de la page

```html
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="description de la page">
    <title>Titre de la page</title>
    <favicon href="favicon.ico">
</head>
  <body>
    <section>
      <article>
        <h1>Titre de l'article</h1>
        <p>Contenu de l'article</p>
      </article>
    </section>
  </body>
</html>
```
#### Les liens

- Les liens internes : les liens qui pointent vers des pages de votre site
- Les liens externes : les liens qui pointent vers des pages d'autres sites

- <a href="Url"> Texte du lien </a>

#### Les images

- `<img src="Url" alt="Texte alternatif">`

#### Robots.txt

C'est un fichier qui permet de dire aux moteurs de recherche ce qu'ils peuvent indexer ou non.

```txt
User-agent: *
Disallow: /admin/
```

#### Sitemap.xml

C'est un fichier qui permet de dire aux moteurs de recherche les pages à indexer.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://www.example.com/nouvel-article</loc>
    <lastmod>2021-09-01</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
  </url>
</urlset>
```

#### Flux RSS

On peut s'abonner à un flux RSS pour être informé des nouvelles publications d'un site.
Les flux lisent les fichiers Sitemap.xml


### Référencement payant (SEA)

On paie un outil tiers qui fait tout pour nous.

- Google Ads
- Bing Ads
- Yahoo Ads
- Qwant Ads
- DuckDuckGo Ads

Vous pouvez aussi payer une entreprise spécialisée.

### Référencement social (SMO)

On veut être le premier site quand on utilise un réseau social.

- Facebook
- Twitter
- Instagram
- LinkedIn
- TikTok
- Snapchat

### Index et annuaire

Les annuaires sont des sites qui référencent des sites. Ils sont classés par catégories.
Ils comportent la liste des sites, leur description et leur URL (ça lit les balises HTML qu'on a vu plus tôt).

## Analytic

### Analyse de trafic

On veut savoir combien de personnes visitent notre site, combien de temps ils y restent, d'où ils viennent, etc.

- Google Analytics
- Matomo
- AT Internet
- Adobe Analytics
- Unami (opensource et gratuit)

### Analyse de performance

On veut savoir si notre site est rapide, si les images sont bien compressées, si le code est bien écrit, etc.

- Google PageSpeed Insights
- GTmetrix
- Pingdom
- WebPageTest

Par défault, lorsqu'un navigateur ouvre un site internet sans page définit, il va chercher un fichier qui s'appelle `index.html`. Autrement dit, lorsque je vais sur https://raclette.com/ le navigateur va lire pour nous https://raclette.com/index.html.


## Définitions

PoC : Proof of Concept
MVP : Minimum Viable Product
Prod : Production
















