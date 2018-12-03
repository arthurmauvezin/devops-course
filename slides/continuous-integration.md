
## Continuous Integration

----

### What is the integration

* Put together pieces which were developed separately

----

### CI : Build

> Avoid effect: "I don't understand! It worked on my laptop..."

* Download dependencies
* Build application

----

### CI : Tests

* Test all you can test automatically --> It means, practically everything.
* There is different type of tests

> To test is to stamp and validate a deliverable

----

#### Unit tests

* Validate a simple brick of the application
* Ex: Validate that your methods behave as you wanted

----

#### Integration tests

* Rely on Unit tests
* Validate that all bricks behave as intended
* You can test from any interface (not only client interface)

----

#### Functional / End-to-end tests

* We simulate inputs as they will be by real users (Gherkin scenario) 
* ex: we simulate clicks, character typing, scrolling, double tap, ...
* Then, we validate return: the page load, information is sent, ...
* Rely on technical prerequisites: ids on html element, ...

----

#### Load tests

* Validate resilience of an application when experiencing load.
* These test must be realized with one instance at first then scale to find breaking point
* Scenario can be simple or complex
* Load tests allow to find a critical path between instance and user number

----

#### Security tests

* Validate if the application is immune against known security holes (sql injection, XSS, ...)
* DDOS and bruteforce application

----

#### Tests : Cons

* Time consuming to maintain. Tests extend development phase.
* Time consuming to setup. Lots of test techno exists and there is a study analysis to perform before setting up automated tests.

----

#### Tests : Pros

* Tests are not optional
* Tests reduce time to validate deliverable
* Tests strenghten our confidence in the quality of our work
* Tests allow to stay focused on value creation chain instead of debugging apps

----

### Code analysis

* Static or dynamic code analysis tool provide statistics about code quality, vulnerabilities, plausible bugs, ...
* Spotlights most dangerous problems
* Allow introspection about general quality of code and efforts to approach perfection

----

### Skill / Tools

* Continuous Integration servers : Jenkins, TeamCity, Bamboo, Travis (SaaS), Gitlab, ...
* Scripting : bash, python, powershell, groovy, ...
* Building : Maven, MsBuild, NPM, ...
* Dependency management : Maven, Nuget, Pip, Bower, NPM, ...
* Unit Tests : JUnit, NUnit, unittest, unit-test, ...

----

### Skill / Tools (part 2)

* Integration Tests : Failsafe, curl, SoapUI, Postman, ...
* Functional Tests : Selenium, Cucumber, Test IO, HP UFT, SoapUI, Postman, Ranorex ...
* Load Tests : JMeter, Gatling, Locust, ...
* Security Tests : Netsparker, Acunetix, Metasploit
* Code Analysis : Sonar, Coverity, Fortify
