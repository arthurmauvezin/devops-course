## Continuous Delivery

----

### S'appuie sur la Continuous Integration 
<img src="images/wf-cdelivery.png" style="background:none; border:none; box-shadow:none;"/>

----

### Qu'est ce que le delivery

> Stocker un livrable potentiellement prêt à aller en production

----

### Tracabilité du livrable

* Le livrable doit pouvoir être tracé à travers les étapes précédentes mais aussi les étapes suivantes
* A un livrable correspond :
  * Une demande
  * N commit
  * Un tag 
  * Une version visible par les utilisateurs pour remonter les bugs

----

### Problématique de versioning

> Afin de faciliter la tracabilité du livrable, il est important d'avoir un versioning bien pensé
* Le versioning remet parfois même en question les contenus et les délais de livraison
* Exemple de versioning : MAJEUR.MINEUR.PATCH_BUILDNUMBER (5.21.12_3)

----

### Mise en prod manuelle

* Le continuous delivery ne réalise pas les mise en production automatiquement
* Les mises en productions sont lancées manuellement après validation par un humain

----

### Compétences 

* Packaging appli : Maven, NPM, MsBuild, Python, Docker, ...
