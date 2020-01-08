Ce plugin eedomus permet de piloter les prises et ampoules des actionneurs configur�s dans deCONZ.

## Pr�requis

Un serveur deCONZ install�

## Installation

Cliquez sur "Configuration" / "Ajouter ou supprimer un p�riph�rique" / "Store eedomus" / "Actionneurs - deConz" / "Cr�er"

## Champs a configurer : 

![Configuration actionneur deCONZ](https://i.ibb.co/pyLkDfS/readme01.png)

* IP + Port : Adresse ip et port (facultaf si votre serveur utiliser le port 80) de votre serveur
* Clef API : l'Identification l'acces a l'API deCONZ (pour cr�er une nouvelle clef d'acces : Connectez vous a **Phoscon-GW** puis allez dans **Settings/Gateway/Advanced**  puis, cliquez sur **Athenticate app** )
* Identifiant de l'actionneur : TODO
* Mod�les d'actionneurs :  Prise, Ampoule standard, Ampoule spectre blanc<sup>1</sup>, Ampoule couleur

## P�riph�riques cr�es en fonction de votre s�lection : 
[1] pour une prise<br>
![on, off](https://i.ibb.co/gSvngm7/readme02.png)

[2] pour les ampoules<br>
![ on, off et luminosit�](https://i.ibb.co/Kmgcct5/readme04.png)

[3] Pour les ampoules � spectre blanc<br>
![p�riph�rique Gestion des blancs](https://i.ibb.co/4pr29mn/readme05.png)

[4] Pour les ampoules couleur<br>
![p�riph�rique Gestion des couleurs](https://i.ibb.co/nRtTWmf/readme03.png)

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
La mise en place d'un push vers l'eedomus via un autre syst�me (ex Domoticz, Node-RED...) connect� au webservice de deCONZ permet d'obtenir les changements d'etat en temps r��l.

---
<sup>1</sup> Pour les ampoules Ikea la valeur ct remont�e par deCONZ est incorrecte (toujours a 439), il faut donc d�sactiver le pooling sous eedomus.
