## Continuous Deployment

----

### S'appuie sur le Continuous Delivery
<img src="images/wf-cdeployment.png" style="background:none; border:none; box-shadow:none;"/>

----

### Qu'est ce que le continuous deployment

> Le continuous deployment ajoute la dimension de mise en production automatique au continuous delivery

----

### Etre sûr de ses tests

* La validation par les tests doit être **béton**
* Il faut donc un niveau de maturité des tests suffisant

----

### Livrer au commit

* La mise en place du continuous delivery permet de livrer directement à chaque commit
* Livrer souvent permet de livrer peu de changements à chaque fois, et donc moins de régression en cas d'erreur
* Il est plus simple de faire un rollback sur une fonctionnalité que sur 15 --> Moins de désagréments pour les clients

----

### Compétences / Outils

* Outil de déploiement/orchestrateur : puppet, docker, rancher, swarm, kubernetes, ...
* Outils de scripting : python, powershell, bash, ...
* Load Balancer : Nginx, HaProxy, Traefik, ...
