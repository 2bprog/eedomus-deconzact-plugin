Ce plugin eedomus permet de piloter les prises et ampoules des actionneurs configur�s dans deCONZ. deCONZ est l'application de dresden elektronik qui g�re les clefs zigbee ConBee, ConBee II et RaspBee


## Pr�requis

* Un serveur deCONZ install� 

## Installation

* Cliquez sur "Configuration" / "Ajouter ou supprimer un p�riph�rique" / "Store eedomus" / "Actionneurs - deConz" / "Cr�er"

## Champs a configurer : 

![Configuration actionneur deCONZ](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/deconzact-config.png)

### IP + Port
* Adresse ip et port (facultaf si votre serveur utiliser le port 80) de votre serveur. Vous pouvez egalement cliquer sur "Recherche de serveur" pour afficher un fen�tre avec la liste des serveurs deCONZ pr�sent sur votre r�seau.

![Recherche de serveur](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/serveur.png)

### Clef API
* pour communiquer avec deCONZ, le syst�me a besoin d'un clef d'acc�s, pour la cr�er : Connectez vous a **Phoscon-GW** puis allez dans **Settings/Gateway/Advanced**  puis, cliquez sur **Athenticate app** )


### Identifiant de l'actionneur 
*


* Mod�les d'actionneurs :  Prise, Ampoule standard, Ampoule spectre blanc<sup>1</sup>, Ampoule couleur

## P�riph�riques cr�es en fonction de votre s�lection : 

### [1] Une prise 
![on, off](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/prise.png)

### [2] Une ampoule standard
![on, off et luminosit�, transition](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/ampoule-standard.png)

### [3] Une ampoule � spectre blanc
![on, off et luminosit�, blanc, transition](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/ampoule-ws.png)

###  [4] Un ampoule de couleur<br>
![on, off et luminosit�, couleur, transition](https://raw.githubusercontent.com/2bprog/eedomus-deconzact-plugin/master/doc/ampoule-rgbw.png)

## P�riph�riques test�s

* Ikea - Tradfri Prise connect�e [1]
* Ikea - Tradfri Alimentation 10W [2]
* Ikea - Tradfri Alimentation 30W [2] 
* Ikea - Tradfri Ampoule E14 W op/ch 400lm [2]
* Ikea - Tradfri Ampoule E27 WW 806lm [2]
* Ikea - Tradfri Ampoule E27 W opal 1000lm [2] 
* Osram - Smart+ Spot LED GU10 6W Blanc Chaud/Froid [3]
* Ikea - Tradfri Ampoule E27 WS opal 1000lm [3]<sup>1</sup>
* Ikea - Tradfri Ampoule E27 CWS opal 600lm [4]

## Remarques 
* La mise en place d'un push vers l'eedomus via un autre syst�me (ex Domoticz, Node-RED...) connect� au webservice de deCONZ permet d'obtenir les changements d'etat en temps r��l.

---
<sup>1</sup> Pour les ampoules Ikea, la valeur ct (Temp�rature) remont�e par deCONZ est incorrecte, il faut donc d�sactiver le pooling sous eedomus (mettre � vide : "Requ�te de mise � jour" dans le param�tres Expert)

## Sources et historique des versions

* [Sources](https://github.com/2bprog/eedomus-deconzact-plugin)
* [Sources](https://github.com/2bprog/eedomus-deconzact-plugin/blob/master/CHANGELOG.md)

## Liens 

*<https://phoscon.de/en/conbee2>
*<https://dresden-elektronik.github.io/deconz-rest-doc/>
*<https://github.com/Smanar/Domoticz-deCONZ>
