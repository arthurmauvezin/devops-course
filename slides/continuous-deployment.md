## Continuous Deployment

----

### Rely on Continuous Delivery
<img src="images/wf-cdeployment.png" style="background:none; border:none; box-shadow:none;"/>

----

### What is Continuous Deployment?

> Continuous deployment add automatic production deployement to continuous delivery

----

### Tests rules!

* Test validation must be perfect
* Test maturity level must be sufficient

----

### Commit to prod

* With the continuous delivery, it is possible to deploy each commit on specific branch directly to production environment
* Deploy often allow to push only a small number of change each time which creates less regressions in the case of an error.
* It is easier to rollback 1 change than 15 --> Less inconveniences for clients

----

### Skills / Tools

* Deployment/orchestrators: puppet, docker, rancher, swarm, kubernetes, ...
* Scripting: python, powershell, bash, ...
* Load Balancer : Nginx, HaProxy, Traefik, ...
