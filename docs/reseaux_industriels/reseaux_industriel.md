# Réseaux industriels

Voici une usine à Thé, tous les composants sont contrôlés par un controleur 

![](../images/usine_the.png)

* Le PLC (boitier de commande), gère les capteurs (actionneurs) et les moteurs.

* Par la suite on a connecté c'est boitier de commande à un poste de supervision (SCADA) pour gérer plusieurs systèmes industriels à distances.

* Un système de contrôle SCADA permet de recevoir des données depuis les boitier de commande, mais aussi les contrôler ! En piratant le PC de supervision, on peut contrôler l'ensemble des réseaux industriels.

* Tous ces composants ont des firmware, très peu mis à jour. => __STUXNET__


__Machine outil (pilotage)(machine autonome)__

* Bus capteur : ASI, Seriplex
* Bus actionneur : interbus
* Bus de terrain (device bus): Modbus, interbus-S, profibus, device net

<img src="../images/ASI.jpg" width="200"/> <img src="../images/seriplex.gif" width="200"/>

![ASI](../images/ASI.jpg "Bus ASI") ![Seriplex](../images/seriplex.gif "Bus seriplex") ![interbus](../images/interbus.png "Bus interbus") ![modbus](../images/modbus.png "Bus Modbus") ![profibus](../images/profibus.png "Bus profibus") ![devicenet](../images/devicenet.jpg "Bus device net")


__Machine__ (pilotage et/ou process) => machine discute avec PLC ou SCADA

* Bus fieldbus (bus locaux), Flipway, profibus, FMS

__pilotage des processus__ (SCADA)

* Ethernet, MMS


__Bus entre cartes electroniques et une machine__

* Bus I2C : interconnection des cartes electroniques entre elles, ou entre composants sur une même carte électronique.

* Bus CAN : relier 2 cartes electronique entre elles (< 1km)

* Bus D2B : < 100m très utile (enciennement) en domotique.

