## Le Serverless

La nouvelle coqueluche

----

### Définition

- Ce n'est pas une nouvelle offre cloud, mais un concept d'architecture

----

### Propriétés désirables

- Ephémère
  - La plateforme attends les requêtes et n’instancie que les fonctions a la demande, qui ne ”vivent” le temps délivrer le résultat
- Scalabilité dynamique
  - Résilience supportée nativement par la plateforme
- Gestion fine
  - Pay-per-use sur le cloud
- Piloté par événements

----

### Propriétés désirables

- Attention aux contraintes
  - Pas d'état
  - Vendor lock-in
  - Cold start
  - Pas de service long

----

### Architecture traditionnelle

![Image](https://martinfowler.com/articles/serverless/ps.svg)

----

### Séparons l'architecture

<img src="https://martinfowler.com/bliki/images/serverless/sketch.png" width="50%" />

----

### Architecture serverless

<img src="https://martinfowler.com/articles/serverless/sps.svg" width="75%" />

----

### Architecture

Traditionnelle

<img src="https://martinfowler.com/articles/serverless/cp.svg" width="75%" />

Serverless

<img src="https://martinfowler.com/articles/serverless/scp.svg" width="75%" />

----

### Function-as-a-Service

----

### Backend-as-a-Service

----

### Autoscaling

Contrairement au PaaS ou au IaaS, la scalabilité est automatique et basé sur des métriques techniques et fonctionnelles

----

### Scale to zero

Du point de vue de l'utilisateur, s'il n'y a pas d'utilisation de l'environnement, il n'y a pas de coût associé