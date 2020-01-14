Ce plugin eedomus permet de piloter les prises et ampoules des actionneurs configurés dans deCONZ. deCONZ est l'application de dresden elektronik qui gère les clefs zigbee ConBee, ConBee II et RaspBee


## Prérequis

* Un serveur deCONZ installé 

## Installation

* Cliquez sur "Configuration" / "Ajouter ou supprimer un périphérique" / "Store eedomus" / "Actionneurs - deConz" / "Créer"

## Champs a configurer : 

![Configuration actionneur deCONZ](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/deconzact-config.png)

### IP + Port
* Adresse ip et port (facultaf si votre serveur utiliser le port 80) de votre serveur. Vous pouvez egalement cliquer sur "Recherche de serveur" pour afficher un fenêtre avec la liste des serveurs deCONZ présent sur votre réseau.

![Recherche de serveur](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/serveur.png)

### Clef API
* pour communiquer avec deCONZ, le système a besoin d'un clef d'accès, pour la créer : Connectez vous a **Phoscon-GW** puis allez dans **Settings/Gateway/Advanced**  puis, cliquez sur **Athenticate app** )


### Identifiant de l'actionneur 
*


* Modèles d'actionneurs :  Prise, Ampoule standard, Ampoule spectre blanc<sup>1</sup>, Ampoule couleur

## Périphériques crées en fonction de votre sélection : 

### [1] Une prise 
![on, off](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/prise.png)

### [2] Une ampoule standard
![on, off et luminosité, transition](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/ampoule-standard.png)

### [3] Une ampoule à spectre blanc
![on, off et luminosité, blanc, transition](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/ampoule-ws.png)

###  [4] Un ampoule de couleur<br>
![on, off et luminosité, couleur, transition](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/ampoule-rgbw.png)

## Périphériques testés

* Ikea - Tradfri Prise connectée [1]
* Ikea - Tradfri Alimentation 10W [2]
* Ikea - Tradfri Alimentation 30W [2] 
* Ikea - Tradfri Ampoule E14 W op/ch 400lm [2]
* Ikea - Tradfri Ampoule E27 WW 806lm [2]
* Ikea - Tradfri Ampoule E27 W opal 1000lm [2] 
* Osram - Smart+ Spot LED GU10 6W Blanc Chaud/Froid [3]
* Ikea - Tradfri Ampoule E27 WS opal 1000lm [3]<sup>1</sup>
* Ikea - Tradfri Ampoule E27 CWS opal 600lm [4]

## Remarques 
* La mise en place d'un push vers l'eedomus via un autre système (ex Domoticz, Node-RED...) connecté au webservice de deCONZ permet d'obtenir les changements d'etat en temps réèl.

---
<sup>1</sup> Pour les ampoules Ikea, la valeur ct (Température) remontée par deCONZ est incorrecte, il faut donc désactiver le pooling sous eedomus (mettre à vide : "Requête de mise à jour" dans le paramètres Expert)

## Sources et historique des versions

* [Sources](https://github.com/2bprog/eedomus-deconzact-plugin)
* [Sources](https://github.com/2bprog/eedomus-deconzact-plugin/blob/master/CHANGELOG.md)

## Liens 

*<https://phoscon.de/en/conbee2>
*<https://dresden-elektronik.github.io/deconz-rest-doc/>
*<https://github.com/Smanar/Domoticz-deCONZ>
