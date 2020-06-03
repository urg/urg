---
title: "Dixons Carphone"
date: 2019-06-03T21:51:13+01:00
draft: false
hideLastModified: true
keepImageRatio: true
tags: ["PHP", "Symfony", "Terraform", "AWS", "Docker", "Elasticsearch"]
summary: "Improving the Curry's Search Api"
summaryImage: "images/currys.png" 
showInMenu: false
---

{{< summaryImage >}}

## Key Technologies:
{{< tags >}}

## Company Intro:

[Dixons Carphone](https://www.dixonscarphone.com/en) is the company behind the [Curry's website](https://www.currys.co.uk/gbuk/index.html).

## Team Composition & My Role:

The Searchlabs team consisted of 3 additional senior developers, 1 qa, 1 product owner/scrum master, & 1 team lead (part-time). The team operated as a true scrum team and was empowered to own the search api completely. My role was as a senior developer (contractor) and used my expertise to suggest and make improvements to the search api.

## Project Details:

I successfully completed several projects at Dixons:

#### Search Relevancy

I created a solution to ensure that changes to the search algorithm did not negatively impact on relevancy results. The tool measured changes to relevancy using the Wilcoxon signed-rank test by comparing product position results between the baseline and a new search algorithm. The tool ran those comparisons for the top 1000 searches and highlighted the searches with the largest changes. There was the ability to drill into search and see how the results changed. 

#### API Performance and Load Testing

I automated the load testing process and put into a docker container. I then established a baseline performance and added testing of the performance into the CI pipeline to fail the build if it did decrease. Additionally, I created another CI option to run a load test against the environment in order to verify that auto-scaling at peak load would work as expected.

#### Other Smaller Projects

Other smaller projects included migrating to docker compose, minor tweaks to the search results, minor additions to the Backoffice, & adding OpenDistro Elasticsearch monitors.


