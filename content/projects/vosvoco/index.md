---
title: "Vos Voco"
date: 2019-06-03T21:51:13+01:00
draft: false
hideLastModified: true
keepImageRatio: true
tags: ["Terraform", "Ruby", "Docker", "AWS", "Vue.js", "Fargate"]
summary: "Modernisation, Testing, & Maintenance"
summaryImage: "images/vosvoco.png" 
showInMenu: false
---

{{< summaryImage >}}

## Key Technologies:
{{< tags >}}

## Company Intro:

Vos Voco provides an app based service to automate workflow processes.

## Team Composition & My Role:

My role was as the sole full-stack developer to maintain, modernise, and enhance the website. There was an additional app developer who handled the app side of things.

## Project Details:

I was tasked with maintaining the website. After analysing the current setup, I recommended and performed a modernisation program:
1) **Containerise & Deployment**
   Initially the website was hosted on an ec2 instance with a manual deploy process. In order to develop locally and easily deploy, it made sense to containerise the application and move to a DevOps based deployment process.
   * Containerising the ruby api & vue front-end app
   * Migrating the existing EC2 based web application to be hosted via Fargate (Terraform based)
   * Creating a AWS Code Pipeline to deploy the container with an ECR push trigger
   * Create GitHub actions to build the container and push to ECR
2) **Automate testing**
   There was an extensive manual test suite, however, this was quite time intensive to run and did not fit in will with a DevOps approach. As the website was quite involved, we agreed to create a baseline level of unit tests to ensure basic functionality before any feature changes were met, and then enhance testing around the feature functionality as new features were added.
   * Setup initial unit tests 
   * Add the unit test execution to the GitHub actions and require passing before deployment
3) **Upgrade Ruby & Libraries**
   Some of the libraries were old and needed updating. Once the baseline level of unit tests were created, this then gave some confidence to upgrade the old libraries.
4) **Bug fixes / Feature enhancements** There was a backlog of very minor bugs and some feature enhancement requests to do. TDD was used to recreate the bug or create test cases for the feature. In some cases, tests were created to determine existing functionality to then drive documentation. 
   


