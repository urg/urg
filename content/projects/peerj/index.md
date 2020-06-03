---
title: "PeerJ"
date: 2019-06-03T21:51:13+01:00
draft: false
hideLastModified: true
keepImageRatio: true
tags: ["PHP", "Symfony", "Puppet", "Elasticsearch", "AWS", "Varnish", "Redis", "Ansible", "MySQL", "Aurora", "Graylog", "Hive"]
summary: "Helping to create a marketplace leader"
summaryImage: "images/peerj.png" 
showInMenu: false
---

{{< summaryImage >}}

## Key Technologies:
{{< tags >}}

## Company Intro:

[PeerJ](https://peerj.com) is an award winning open access peer-reviewed journal with an innovative lifetime subscription model.

## Team Composition & My Role:

I was hired as a Senior Software Engineer and transitioned into a DevOps Lead. The technical team was quite small and consisted of the CEO, 1 senior dev and myself. Additionally, I hired 1 dev-ops engineer during my time at PeerJ.

## Project Details:

I joined PeerJ when their initial MVP was still in development and helped them develop into the site they are today. Some of the notable projects I did while there are:

#### Scaling, Load Testing, & High Availability

I setup & configured varnish caching (including automating cache invalidation & ip blacklisting). In combination with this, I created a JMeter load profile and ran load tests in a load environment to ensure optimal configuration of Apache, PHP, & Varnish. Additionally, I setup a Jenkins built server and created the deploy process.  This work resulted in a 1 year uptime of 99.99% (less than 1 hour of downtime over the year).

#### Accurate Page Level Analytics

Initially, we used Google Analytics (GA) to publicly report on the individual page level metrics (Page Views, Pdf Downloads), however, we quickly notices issues with GA where the metrics were decreasing, or having large 1 off jumps (followed by a decrease back to original levels). I tried adding logic to prevent these situations from occurring, but it became apparent that even with those fixes, GA was not a viable long term solution. I created a EMR cluster and used Hadoop & Hive to query the log files to be able to retrieve the same metrics. As part of this process, I created IP & Bot exclusions to ensure the metrics were largely consistent with the previous data. Additionally, I architected the system so the cluster could be brought online for an hour or 2 each night to gather just the recent metrics for cost savings. This project was critical in maintaining trust in the PeerJ site by its community and resulted in no further complaints about page level metrics.

#### Migration away from Scalr

When I started with PeerJ, Scalr was used for many aspects of the PeerJ MVP. Due to time constraints, I continued along that path, using Scalr heavily for job orchestration, scaling servers based on load, deployment and database replication. However, due to both cost savings and occasional issues with their job orchestration engine, I decided to start a long term project to migrate away from Scalr. There were several parts to the project:
* Migration from MySQL to Aurora
  * I tasked the other dev-ops engineer with this project, which he completed with minimal downtime.
* Migration from Scalr Job Orchestration to a custom solution
  * I used a combination of several tools to achieve the same functionality we were used to. Cron was used to schedule the jobs on several servers. Cronlock was used to ensure the task only ran on 1 server. Graylog was used to be able to view the output of the job. [MEMon](https://github.com/so-sure/MEMon) was created to monitor that the script ran and finally there was a custom python script wrapper to make it easy to tie all the tools together. This migration was successful and did not have any of the problems we encountered with Scalr of the occasional job not running.
* A new deploy process
  * Ansbile was chosen to be the tool for running the deployments. We had quite a complex deploy script in Scalr, however, between ansible and ansistrano, we were able to simplify the deploy script.
* Using AWS Load Balancing
  * Scalr had it own ability to define metrics used for load balancing. Migration to using the AWS metrics was fairly simple, however, did involve testing in the load environment.

I left PeerJ before the entire migration was complete, however, the majority of the work had been complete and it was well on track to being a successful migration and had the potential to reduce costs by 20%.
