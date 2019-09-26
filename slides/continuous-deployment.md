## Continuous Deployment
<img src="images/release-cycle/release-cycle-deploy.png" style="background:none; border:none; box-shadow:none;"/>

----

### What is Continuous Deployment?

> Continuous deployment add automatic deployment to continuous delivery

----

### Tests rules!

* Test validation must be perfect
* Test maturity level must be sufficient

----

### The Dream: Commit to prod

* With the continuous delivery, it is possible to deploy each commit on specific branch directly to production environment
* Deploy often allow to push only a small number of change each time which creates less regressions in the case of an error.
* It is easier to rollback 1 change than 15 --> Less inconveniences for clients

----

### Skills / Tools

Domain | Examples
--- | ---
Deployment | XLDeploy, puppet, docker, rancher, swarm, kubernetes
Scripting | python, powershell, bash
Load Balancer | Nginx, HaProxy, Traefik
