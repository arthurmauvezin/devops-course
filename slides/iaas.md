## Le IaaS

Infrastructure-as-a-Service

----

### Scalabilité

- Verticale
 - Ajouter plus de puissance (cpu, ram, stockage)
- Horizontale
 - Ajouter plus de serveurs
 - Par ex. sharding, microservices ou partitions

----

### Elasticité

Capacité de faire grossir ou réduire l'infrastructure dynamiquement, et de manière automatisée

----

### Auto-scaling

Capacité à maintenir (à la hausse ou à la baisse) la capacité souhaitée d'instances par rapport à l'état de ces instances (santé, cpu, ram, ...)

----

### Self service

Créer ou détruire automatiquement des ressources (via portail web ou api) sans passer par un utilisateur tiers ou un service de ticket

----

### Regions : AWS

![Image](https://images.techhive.com/images/article/2016/03/amazon-cloud-dc-map-100651841-large.idge.gif)

----

### Regions : Azure

![Image](https://i1.wp.com/buildazure.com/wp-content/uploads/2017/09/AzureRegionsMap_20170922.png?resize=900%2C469&ssl=1)

----

### Availability zones

<img src="https://www.agileit.com/wp-content/uploads/2017/11/az-graphic-two.png" width="35%" />
<img src="https://image.slidesharecdn.com/awsoverviewv4-120611171440-phpapp02/95/overview-of-amazon-web-services-8-728.jpg?cb=1434492790" width="54%" />

----

### Machines virtuelles

- Découplage entre cpu, ram et stockage
- Tourne sur un hyperviseur (Xen pour AWS, HyperV pour Microsoft)

----

### Template de machine

| Modèle | vCPU | Mémoire | Stockage | Réseau |
|---|---|---|---|---|
| m5.large | 2 | 8 | EBS | 3.5Gbit/s |
| m5.xlarge | 4 | 16 | EBS | 3.5Gbit/s |
| m5.2xlarge | 8 | 32 | EBS | 3.5Gbit/s |
| m5.4xlarge | 16 | 64 | EBS | 3.5Gbit/s |
| m5.12xlarge | 48 | 192 | EBS | 7Gbit/s |

----

### Pet vs Cattle

![Image](https://i.stack.imgur.com/Lm3Td.jpg "Pet vs Cattle")

----

### Immutable infrastructure : problème

![Image](https://martinfowler.com/bliki/images/immutableServer/PhoenixServerLifecycle.png)

----

### Immutable infrastructure : solution

![Image](https://martinfowler.com/bliki/images/immutableServer/ImmutableServerLifecycle.png)

----

### Immutable infrastructure : outils

Packer / AMI / Image

----

### Network

- Permet de paramétrer toute la stack réseau
- Défini des réseaux virtuels isolés entre eux
- Sécurisation par firewall

----

### Infra as Code

```json
resource "azure_instance" "web" {
  name                 = "terraform-test"
  image                = "Ubuntu Server 14.04 LTS"
  size                 = "Basic_A1"
  location             = "West US"
  username             = "terraform"
  password             = "Pass!admin123"

  endpoint {
    name         = "SSH"
    protocol     = "tcp"
    public_port  = 22
    private_port = 22
  }
}
```

----

### Backup / Restore

Le cloud n'empêche pas de mettre en place un système de backup

C'est à la charge de l'utilisateur de mettre en place un système de backup de données s'il y a un crash du cloud

----

### DRP (Disaster Recovery Plan)

Ensemble de procédures qui permet à une entreprise de prévoir par anticipation les mécanismes pour reconstruire et remettre en route un système d'information en cas de sinistre important ou d'incident critique

----

### DRP (Disaster Recovery Plan)

Le cloud n'empêche pas les entreprise de mettre en place un DRP

----

### RTO (Recovery Time Objective)

Expression de besoin de disponibilité des différents métiers ou services

----

### RPO (Recovery Point Objective)

Données qu'un système d'information peut être amené à perdre par suite d'un incident

----

### RTO/RPO

![Image](https://upload.wikimedia.org/wikipedia/commons/c/c4/RTO_RPO.gif)

----

### Architecture

<img src="https://blog.cds-global.com/hs-fs/hubfs/Imported_Blog_Media/eHub-AWS-Architecture.png?t=1538073581004&width=858&height=942&name=eHub-AWS-Architecture.png" width="50%" />

----

### Chaos engineering

<img src="https://upload.wikimedia.org/wikipedia/commons/e/e6/Netflix_simianarmy-768x797.jpg" width="50%" />

----

### Simian army

- Composé de 9 outils
- Chaos Monkey
  - Mets hors service une instance de production aléatoirement
- Chaos Gorilla
  - Mets hors service une AZ aléatoirement
- Chaos Kong
  - Mets hors service une région aléatoirement

----

### Simian army

- Latency Monkey
  - Teste la résistance à la panne d'un composant en introduisant de la latence, ou en simulant une coupure complète d'un système externe dépendant
- Doctor Monkey
  - Détection des instances présentant des problèmes de santé (surcharge CPU, ...) en les mettre de coté pour analyse ultérieure

----

### Simian army

- Janitor Monkey
  - Détruit toutes les instances non utilisées pour faire des économies
- Conformity Monkey
  - Mets hors service toute instance non conforme
- Security Monkey
  - Mets hors service toute instance qui présente des vulnérabilités
- 10-18 Monkey
  - Détection de problème de localisation sur les instances

----

### Blue/green deployment

<img src="https://martinfowler.com/bliki/images/blueGreenDeployment/blue_green_deployments.png" width="75%" />

----

### Canary release

![Image](https://akiselev87.files.wordpress.com/2018/02/2018-02-08_8-46-21.jpg)

----

### A/B testing

<img src="https://splitmetrics.com/wp-content/uploads/2016/07/v5.png" width="70%" />

----

### Zero downtime deployment

<img src="https://kubernetes.io/images/blog/2018-04-30-zero-downtime-deployment-kubernetes-jenkins/deployment-process.png" width="70%" />

----