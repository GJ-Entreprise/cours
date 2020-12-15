---
title: "FAOU_Julien_Stuxnet"
author: ["Enseignant responsable: Damien Naviliat"]
date: "2020-12-14"
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "Julien Faou"
titlepage: true
titlepage-color: "FF8C00"
titlepage-text-color: "FFFAFA"
titlepage-rule-color: "FFFAFA"
titlepage-rule-height: 2
listings-no-page-break: true
disable-header-and-footer: false
book: true
classoption: oneside
code-block-font-size: \footnotesize
resource-path: "/OSCP-Exam-Report-Template-Markdown-master/src/"
extract-media: "/OSCP-Exam-Report-Template-Markdown-master/src/"
---


# IOT

On trouve de plus en plus d'bjet IOT qui remonte des infos dans le cloud (camera, badgeuse, capteurs, etc)


## Conception

4 couches : 

### 1 - acquisition : 
* Capteurs de toutes sortes => collecte des informations. 
* Peu de puissance de calcul (pas de grosses puces).
* __=>__ comment intégrer la sécurité à ce niveau ? 

### 2 - Réseau : 
* Permet de connecter lesobjets à l'internet. 
* Beaucoup de vulnérabilités (evesdropping : ecoute/interception), deni de service, usurpation des noeuds.
* A toute les  vuln d'un réseau classique sans les sécurités qui vont avec

### 3- Services : 
* Fournir l'essentiel des services aux applications embarquées dans l'objet ou a ses utilisateurs (pache / dns / ssh / biblio interne pour traiter les informations)

#### 4 - Application :
* Sert aux utilisateurs pour paramétrer l'objet, ou intéragir avec lui.

![](./images/top10owasp2014.png)

## Aperçu technique d'un IOT

![](./images/)

* FPGA : puce sans rien, au constructeur de programmer la puce. Source de faille mais permet de patcher






