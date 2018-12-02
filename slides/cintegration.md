## Continuous Integration

----

### Qu'est ce que l'intégration

* Mettre en commun des parties développées de façon séparées

----

### CI : Build

> Eviter l'effet : "Eh mais je comprend pas ! Ca marche sur mon poste pourtant"

* Télécharger les dépendances
* Builder l'application

----

### CI : Tests

* Tester tout ce qu'il est possible de tester de manière automatique
* C'est à dire : Quasiment tout !
* Il existe un grand nombre de types de tests différents 

> Tester, c'est mettre un coup de tampon sur un livrable

----

#### Tests unitaires

* Tests visant à assurer le bon fonctionnement d'une brique unitairement
* Ces tests peuvent être réalisés au build, ou juste après le build

----

#### Tests d'intégration

* Tests s'appuyant sur les tests unitaires
* Permet de s'assurer que les briques testées unitairement fonctionnent ensemble
* On réalise souvent des appels externes techniques à une des briques puis on valide le retour

----

#### Tests fonctionnels / Bout-en-bout

* Aussi appelé tests navigateur
* On simule les input tels qu'ils seront réalisés par les utilisateurs (scénario de Gherkin)
* Simulation de cliques, d'entrée de caractères dans un champ texte, scrolling, double tap, ...
* On valide le retour : l'apparition de la bonne page, de la bonne information, ...
* Demande des prérequis techniques : id sur chaque élément sélectionnable dans une IHM, ...

----

#### Tests de charge

* Test visant à s'assurer de la résilience de l'application en cas de montée en charge
* On part de requêtes simples puis on bascule sur des scénarios représentatifs des actions des utilisateurs
* On commence par tester avec une seule instance de chaques briques de l'application 
* Puis on augmente le nombre d'instance (**scale**) pour voir comment l'application réagit globalement
* Cette méthodologie permet de trouver un chemin critique entre nombre d'instances et nombre d'utilisateurs

----

#### Tests de sécurité

* Test des failles connues (injections, XSS, ...)
* Charge l'application pour voir comment elle répond
* Bruteforce 

----

#### Tests : Désavantages

* Long à maintenir : il faut prévoir la mise à jour des tests dans les cycles de développement
* Long à mettre en place : il existe un grand nombre de technologies diverses et les bencher prend du temps

----

#### Tests : Conclusion

* Les tests ne sont pas facultatifs
* Les tests permettent de réduire drastiquement le temps passer à valider un livrable
* Les tests augmentent notre confiance en nos livrables 
* Les tests permettent de rester concentré sur la création de valeur au lieu de passer son temps à débuguer les applications

----

### Analyse de code

* Outils d'analyse de code statique ou dynamique
* Remonte des statistiques sur la qualité du code, les vulnérabilités, les bugs possibles
* Met en avant les problèmes les plus dangereux
* Permet une vrai introspection sur la qualité générale du code et sur les efforts à faire pour s'approcher de la perfection

----

### Compétences / Outils

* Serveurs d'intégration continu : Jenkins, TeamCity, Bamboo, Travis (SaaS), Gitlab, ...
* Scripting : bash, python, powershell, groovy, ...
* Building : Maven, MsBuild, NPM, ...
* Dependency management : Maven, Nuget, Pip, Bower, NPM, ...
* Unit Tests : JUnit, NUnit, unittest, unit-test, ...

----

### Compétences / Outils (suite)

* Integration Tests : Failsafe, curl, SoapUI, Postman, ...
* Functional Tests : Selenium, Cucumber, Test IO, HP UFT, SoapUI, Postman, Ranorex ...
* Load Tests : JMeter, Gatling, Locust, ...
* Security Tests : Netsparker, Acunetix, Metasploit
* Code Analysis : Sonar, Coverity, Fortify
