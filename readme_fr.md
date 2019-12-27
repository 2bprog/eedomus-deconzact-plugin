Ce plugin eedomus permet de piloter les prises et ampoules des actionneurs configurés dans deCONZ.

## Prérequis

Un serveur deCONZ installé

## Installation

Cliquez sur "Configuration" / "Ajouter ou supprimer un périphérique" / "Store eedomus" / "Actionneurs - deConz" / "Créer"

## Champs a configurer : 

![configuration actionneur deCONZ](https://i.ibb.co/pyLkDfS/readme01.png)

* IP + Port : Adresse ip et port (facultaf si votre serveur utiliser le port 80) de votre serveur
* Clef API : l'Identification l'acces a l'API deCONZ (pour créer une nouvelle clef d'acces : Connectez vous a **Phoscon-GW** puis allez dans **Settings/Gateway/Advanced**  puis, cliquez sur **Athenticate app** )
* Identifiant de l'actionneur : TODO
* Modèles d'actionneurs :  Prise, Ampoule standard, Ampoule spectre blanc<sup>1</sup>, Ampoule couleur

## Périphériques crées en fonction de votre sélection : 

|[1] pour une prise    |   [2] pour toutes les ampoules  | [3] Pour les ampoules avec un spectre blanc |[4] Pour les ampoules couleur|
| :-----: | :-----: | :-----: | :-----: |
| ![périphérique on off](https://i.ibb.co/gSvngm7/readme02.png) |  ![périphérique on, off et luminosité](https://i.ibb.co/Kmgcct5/readme04.png) | ![périphérique Gestion des blancs](https://i.ibb.co/4pr29mn/readme05.png) | ![périphérique Gestion des couleurs](https://i.ibb.co/nRtTWmf/readme03.png) |

## Voici la liste de périphériques que j'ai testé avec ce pluging

* Ikea - Tradfri Prise connectée [1]
* Ikea - Tradfri Alimentation 10W [2]
* Ikea - Tradfri Alimentation 30W [2] 
* Ikea - Tradfri Ampoule E14 W op/ch 400lm [2]
* Ikea - Tradfri Ampoule E27 WW 806lm [2]
* Ikea - Tradfri Ampoule E27 W opal 1000lm [2]
* Ikea - Tradfri Ampoule E27 WS opal 1000lm [3]<sup>1</sup>
* Ikea - Tradfri Ampoule E27 CWS opal 600lm [4]

## Remarques 
La mise en place d'un push vers l'eedomus via un autre système (ex Domoticz, Node-RED...) connecté au webservice de deCONZ permet d'obtenir les changements d'etat en temps réèl.

---
<sup>1</sup> Pour les ampoules Ikea Spectre Blanc la valeur ct n'est jamais mis a jour. la scrutation de cette information est donc desactivée.
