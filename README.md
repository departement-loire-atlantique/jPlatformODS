# jPlatformODS

<p>
  <a href="https://travis-ci.com/organizations/departement-loire-atlantique">
    <img src="https://travis-ci.com/departement-loire-atlantique/jPlatformODS.svg?branch=master" />
  </a>
</p>

Ce module apporte l'intégration des [widgets OpenDataSoft](https://github.com/opendatasoft/ods-widgets) pour JPlatform10.

## Utilisation

À l'installation de ce module, une nouvelle portlet de type *Portlet ODS* est disponible. Dans cette portlet, coller le code du widget dans le champ dédié pour intégrer une nouvelle visualisation.

Le code du widget peut être récupéré ainsi :

   * se connecter sur OpenDataSoft
   * dans l'onglet *données*, cliquer sur le jeu de données concerné
   * aller dans l'onglet *carte*
   * en bas de la carte, aller dans l'onglet *Widget* et récupérer le code `<ods-dataset-context>`

Pour fonctionner, il faut ajouter l'attribut `ID-JEU-DE-DONNEES-domain` à la balise `<ods-dataset-context>`, où `ID-JEU-DE-DONNEES` est l'identifiant du jeu de données indiqué dans l'attribut `context`. La valeur de cet attribut est le domaine OpenDataSoft réservé pour la collectivité. Exemple, pour le département de Loire-Atlantique, cette valeur est `"data.loire-atlantique.fr"`.
