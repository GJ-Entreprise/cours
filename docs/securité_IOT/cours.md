## Cloud computing

### Definition

__Définition du NIST :__

- Modèle omniprésent
- Adapté aux besoins
- Disponible à la demande
- Utilise des réseaux
    - Accéder à des moyens informatiques, partagés, configurable
- Les moyens informatique peuvent être réservés et libérés en fonction des besoins
    - __AVEC__ un effort minimal de configuration

### Facturation

__Télémétrie__, le prix est calculé sur beaucoup d'aspect : 

- Utilisation CPU
- Stockage
- etc


### Raison pour llaer dans le cloud ? 

#### Economique
Pour toutes les entreprises, le service info est un centre de coût, pas de profit. 
Mais le cloud est piegeux, les coûts grimpent vite ! Mais alors au top niveau infra

#### Securité
Les informaticiens ne sont pas toujours amis avec la sécurité, maîtrise pas toujours le concept, les outils, etc...
Entre attaquer une infra d'un PME ou AWS/OVH/etc c'est pas pareil.

#### Migrer dans le cloud

1) Recencer tous les processus de l'entreprise => BPL (graph simple et comprehensible par lambda)

2) Recencer tous les biens (assessments, les choses achetées)(materiel / immateriel)

3) Recencer tous les besoins (de quoi l'entreprise a besoin)


a) échanger avec les cadres (ton service utilise quoi ? les besoins ?)
b) échanger avec les salariés (pas la même vision que les cadres)
c) échanger avec les clients (temps de paiements, comment ça se passe avec l'entreprise ?)
d) Volumétrie moyenne du réseau => séparer les flux
e) Inventaire logiciel / materiel
f) Inventaire des données compatbles
g) Inventaire des assurances (voir si les contrats sont toujours valides avec le cloud)
h) Les données personnelles (RGPD) c'est le cadre qui encadre le service qu'il gère qui gère les données personnelles des employés.
i) Analyser l'impact juridique.

#### BIA

__Business Impact Analysis__ : Etude de l'impact sur la productivité de l'entreprise si un processus métier ou un équipement/bien sur lequel repose le processus venait à faillir.

=> Etablir les chemins critiques : les processus que l'on ne pourra pas interrompre.

=> Evaluer l'impact économique en cas de rupture du process. (la hotline on s'en fou peut etre pas mal)

=> Coût de mise en conformité

#### Coût

- Réduction de la masse salariale.
- Réduction coût opérations.
- Réduction des coûts de mise en conformité.



Modèle économique : 

- SaaS : Sofware as a Service : emails, CRM, soft tout prêt clé en main.
- IaaS : Infrastructure as a Service : serveur baremetal
    + POSITIFS : 
    + Garde la main sur la sécurité.
    + Très utilisé pour la sauvegarde de donnée.
    + PRA / PCA (plan de secours, plan de restauration).
    + Très forte disponibilité.

    - NEGATIFS : 
    - administration
    - mises à jour
    - gain cloud minime
    
- PaaS : Platform as a Service : système exploitation tout prêt (instance)
    IaaS + install les mises à jour des OS
    + devops
    - manque de visibilité sur l'hardening
    - difficulté à modifier paramètre bloqués

