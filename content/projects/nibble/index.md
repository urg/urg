---
title: "Nibble"
date: 2019-06-03T21:51:13+01:00
draft: false
hideLastModified: true
keepImageRatio: true
tags: ["Terraform", "Serverless", "Python", "Docker", "AWS"]
summary: "DevOps Transformation"
summaryImage: "images/nibble.png" 
showInMenu: false
---

{{< summaryImage >}}

## Key Technologies:
{{< tags >}}

## Company Intro:

Nibble is a startup offering an innovative bot-based price negotiator as an alternative to discount codes.

## Team Composition & My Role:

My role was as the sole DevOps engineer to setup the configuration and work with the CTO to coordinate code changes and deployment timings.

## Project Details:

I was tasked with looking at the existing Nibble setup and:
1) make recommendations for best practice in terms of their infrastructure and security 
2) ensure their api was able to handle high volume traffic. 

After analysis, I recommended migrating to using the Serverless framework for their Lambda api and start using Terraform 
for their AWS infrastructure. I implemented the configuration for this along with scripts to easily deploy the configuration
on a per environment basis. As part of the migration, I also migrated their production database to Aurora Serverless for improved scalability.

For volume testing, I setup a JMeter script to simulate their expected client patterns which included dropoff and several different
client flows. While load testing, I found limitiations with AWS Lex and their transaction per second (TPS) limit and worked with AWS to increase the TPS limit for the Nibble account.



