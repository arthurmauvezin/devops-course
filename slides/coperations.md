## Continuous Operations

----

### S'appuie sur le Continuous Deployment
<img src="images/wf-coperations.png" style="background:none; border:none; box-shadow:none;"/>

----

### Récolte des metrics

Monitoring des applications:
* Ressources (RAM, CPU, Network,...)
* Etat (UP/Down)
* Temps de réponse

----

### Centralisation des logs

Vue aggrégée des logs permettant de dégager des metrics intérressantes :
* L'usage
* Alertes critiques
* Temps de réponse
* Nombre de bugs

----

### Scalabilité automatique

* Permettre aux applications de se scaler automatiquement en cas d'un afflux trop important de demandes
* L'afflux est mesuré grâce aux solutions de collecte de metrics et de centralisation des logs

----

### Infrastructure as Code

> Déployer automatiquement les machines et toutes les dépendances nécéssaires au bon fonctionnement des applicatifs

----

### Compétences / Outils

* Monitoring : Centreon, Prometheus, InfluxDB, Grafana
* Centralisation des logs : ElasticSearch, Logstash, Kibana, Filebeat, ...
* Outils d'infra as code : Terraform, Puppet, Ansible, Chef, Salt, ...
* Compétences système et réseau avancées
