# DevOps course

This repo contains a reveal.js presentation about DevOps.
To visualize this presentation, go here: [https://arthurmauvezin.github.io/devops-course](https://arthurmauvezin.github.io/devops-course)
You can also clone this repo and expose static pages through your favorite web server.

This course is completed by a lab available here: [https://github.com/arthurmauvezin/devops-lab](https://github.com/arthurmauvezin/devops-lab)

> This course was originally created for ECE engineering course. You can use it freely.

## Table of content

* Agility
* Devops
* Devops team practices
  * Git
  * Gitflow
* Continuous integration
* Continuous delivery
* Continuous deployment
* Continuous operations
* Docker

## See this course locally with docker
```bash
docker build -t devops-course .
docker run -d --rm -p 80:8080 --name=devops-course devops-course
```
* After a few seconds, you can see the slides on [http://localhost](http://localhost)
* When you want to stop the instance, run:
```bash
docker stop devops-course
```

## Print this course to pdf (only in chrome and chromium)
* Click on [this link](https://arthurmauvezin.github.io/devops-course/?print-pdf&pdfSeparateFragments=false)
* Then `CTRL+P` on the generated page
* Change the following settings

Setting | Value
--- | ---
Destination | Save as PDF
Pages | All
Pages per sheet | 1
Margins | Default
Options | Background graphics

* Click on save
~                 
