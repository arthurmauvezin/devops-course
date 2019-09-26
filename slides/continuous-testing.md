## Continuous Testing
<img src="images/release-cycle/release-cycle-test.png" style="background:none; border:none; box-shadow:none;"/>

----

### What is software testing

> To test is **to stamp and validate a deliverable**

----

### Test rules

* Test all you can test automatically --> It means practically everything.
* There is **different types** of tests
* Tests are **not optional**

----

#### Unit tests

* **Validate a simple brick** of the application
* Ex: Validate that your methods behave as you wanted

----

#### Integration tests

* Rely on Unit tests
* Validate that **multiple bricks behave as intended**
* You can test from any interface (not only client interface)

----

#### Functional / End-to-end tests

* We **simulate inputs as they would be by real users**
* Example: 
  * We simulate clicks, character typing, scrolling, double tap, ...
  * Then, we validate return: the page load, information is sent, ...
  * Rely on technical prerequisites: ids on html element, ...

----

#### Load tests

* Validate **resilience of an application when experiencing load**.
* These tests must be realized with one instance at first then scale to find **breaking point**
* Scenario can be simple or complex
* Load tests allow to **find a critical path between instance and user number**

----

#### Security tests

* Validate if the application is immune against known security holes (sql injection, XSS, ...)
* DDOS and bruteforce application

----

#### Tests Pros

* Tests reduce time to validate deliverable
* Tests strenghten our confidence in the quality of our work
* Tests allow to stay focused on value creation chain instead of debugging apps

----

#### Tests Cons

* Time consuming to maintain. Tests extend development phase.
* Time consuming to setup. Lots of test techs exist - we need to perform a study analysis before setting up automated tests.

----

### Code analysis

* Static or dynamic code analysis tool provide statistics about code quality, vulnerabilities, plausible bugs, ...
* Spotlights most dangerous problems
* Allow introspection about general quality of code and efforts to approach perfection

----

### Skill / Tools

Domain | Examples
--- | ---
Unit Tests | JUnit, NUnit, unittest, unit-test
Integration Tests | Failsafe, curl, SoapUI, Postman
Functional Tests | Selenium, HP UFT, SoapUI, Postman
Test management | Gherkin, Cucumber, HP QC, Hiptest

----

### Skill / Tools (part 2)

Domain | Examples
--- | ---
Load Tests | JMeter, Gatling, Locust, ...
Security Tests | Netsparker, Acunetix, Metasploit
Code Analysis | Sonar, Coverity, Fortify
