## Travailler dans une équipe DevOps

----

### L'utilisation d'un VCS

* VCS: Version Control System
* Gestionnaire de source
* Capable de naviguer à travers un historique de commit
* Capable de travailler dans des branches séparées

----

#### Présentation d'un VCS : Git

* Créé en 2005 par Linus Torvalds
* Le plus populaire
* Gratuit et open source
* Système distribué

----

#### Serveurs Git connus

* Github
* Gitlab
* Bitbucket

----

#### Utiliser Git sur des petits projets

On peut travailler sur une seule branche

Problèmes:
* Conflits récurrents si plusieurs personnes commit en même temps
* Séparer les évolutions fonctionnelles différentes
* Comment savoir de quelle commit repartir quand il y a un bug en production

----

### Utiliser Git en équipe : Gitflow

<img src="https://i.ytimg.com/vi/w2r0oLFtXAw/maxresdefault.jpg" style="background:none; border:none; box-shadow:none;"/>

----

### Apprendre à utiliser Git

* [Le site officiel](https://git-scm.com/book/en/v2)
* [Tutoriel pas à pas](https://www.atlassian.com/git/tutorials/what-is-git)

----

### Pratiques agiles: Les cérémonies

* Sprint Planning
* Stand-up meeting
* Sprint review / Demo
* Sprint retrospective

----

#### Sprint Planning

* Temps: 4h pour un sprint de 2 semaines
* Participants: Tout le monde (Dev, PO, SM)
* But: Velocité, Definition of Done, Liste des tâches à faire sur le sprint

> Vélocité: Valeur indicative de la capacité de l'équipe à réaliser N tâches au cours d'un sprint

----

#### Stand-up meeting

* Temps: 15 minutes tous les matins
* Participants: Tout le monde (Dev, PO, SM)
* But: Discuter des problèmes rencontrés par chacun

----

#### Sprint Review / Demo

* Temps: 1-2h pour un sprint de 2 semaines
* Participants: Tout le monde (Dev, PO, SM) et toutes personnes intérressées par l'avancement du projet
* But: Démonstration du produit et récupération du feedback

----

#### Sprint retrospective

* Temps: 2h pour un sprint de 2 semaines
* Participants: Tout le monde (Dev, PO, SM); la présence du PO est optionnelle
* But: Débrieffer sur ce qui a marché, ce qui n'a pas marché, ce qu'on pourrait améliorer

----

### DevOps team practices

* Pull Request / Code Review
* Coding Dojo
* Pair Programming
* Technical Breakfast

----

#### Pull Request / Code Review

* Au lieu de merger une branche dans une autre, faire une demande de merge
* D'autres membres de l'équipe vont effectur une revue de code des changements apportés
* Permet une baisse des bugs détectables à l'oeil nu

----

#### Pair programming

* Programmer à deux : Un **driver** et un **navigator**
* Les rôles sont échangés régulièrement
* Permet la montée en compétence des personnes impliquées
* Permet au driver de se concentrer sur les tâches de développement
* Permet au navigator de se concentrer sur le design et les problèmes de fond

----

#### Coding Dojo

* Rencontre entre plusieurs personnes souhaitant se confronter à un défi de programmation
* Le but est de proposer la solution la plus optimisée, choisie par l'ensemble des participants
* Permet de ne pas déclencher des débats d'idée plus tard sur les choix techniques pris dans le passé

----

#### Technical Breakfast

* Se réunir autour d'un présentateur qui fait un retour d'expérience sur une techno ou méthodo
* Permet de partager le savoir efficacement au sein d'une entreprise
* Permet au présentateur d'approfondir ses connaissances pour présenter le sujet

----

#### Et pleins d'autres ...

* TDD - Test Driven Development
* BDD - Behavior Driven Development
* Feature Flipping
* Test A/B
