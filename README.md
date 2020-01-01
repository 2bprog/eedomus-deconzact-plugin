# eedomus-deconzact-plugin

Plugin eedomus pour piloter les actionneurs deCONZ

## Actionneurs gérés

1. Prise (On / Off) 
2. Ampoule (On / Off / Luminosité   )
3. Ampoule Spectre blanc (On / Off / Luminosité / Blanc ) <sup>1</sup>
4. Ampoule RBGW (On / Off / Luminosité / Couleur )

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
La mise en place d'un push vers l'eedomus via un autre système (ex Domoticz, Node-RED...) connecté au webservice de deCONZ permet d'obtenir les changements d'etat en temps réèl.

---
<sup>1</sup> Pour les ampoules Ikea la valeur ct remontée par deCONZ est incorrecte (toujours a 439), il faut donc désactiver le pooling sous eedomus.

