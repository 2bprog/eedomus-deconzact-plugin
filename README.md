# eedomus-deconzact-plugin

Plugin eedomus pour piloter les actionneurs deCONZ

## Type d'actionneur géré

1. Prise (On / Off) 
2. Ampoule (On / Off / Luminosité / Transition / Alerte  )
3. Ampoule spectre blanc (On / Off / Luminosité / Blanc / Transition / Alerte)
4. Ampoule RBGW (On / Off / Luminosité / Couleur / Transition / Alerte)

L'etat de communication du péripérique zigbee est egalement diponible

## Périphériques testés 

* Ikea - Tradfri Prise connectée [1]
* Ikea - Tradfri Alimentation 10W [2]
* Ikea - Tradfri Alimentation 30W [2] 
* Ikea - Tradfri Ampoule E14 W op/ch 400lm [2]
* Ikea - Tradfri Ampoule E27 WW 806lm [2]
* Ikea - Tradfri Ampoule E27 W opal 1000lm [2]
* Ikea - Tradfri Ampoule E27 WS opal 1000lm [3]
* Ikea - Tradfri Ampoule E27 CWS opal 600lm [4]

## Remarques 
La mise en place d'un push vers l'eedomus via un autre système (ex Domoticz, Node-RED...) connecté au webservice de deCONZ permet d'obtenir les changements d'etat en temps réèl.

