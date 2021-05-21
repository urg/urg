---
title: "Wray Castle"
date: 2019-06-03T21:51:13+01:00
draft: false
hideLastModified: true
keepImageRatio: true
tags: ["Salesforce", "Apex", "LWC", "Digital Transformation", "Shopify", ".Net Core", "C#", "Azure"]
summary: "Digital Transformation"
summaryImage: "images/wc.png" 
showInMenu: false
---

{{< summaryImage >}}

## Key Technologies:
{{< tags >}}

## Company Intro:

Wray Castle is premium provider of training solutions to Telco operators.

## Team Composition & My Role:

I was the sole developer on the project and worked closely with one of the business owners along with the heads of Operations, Marketing, Sales, and Finance.

## Project Details:

The project brief had 3 aspects: 

1. to review their existing business processes and IT Systems and make recommendations for modernising it
2. enable e-commerce online purchase of courses
3. create a specification for a system to manage large number of students with the view of implementing it.


## Analysis

After analysis, we decided to migrate their existing CRM from Sharpspring to Salesforce as it would allow for an integrated workflow for most of their business processes. Additionally, we chose Shopify for their new website in order to be able to easily integrate
between Salesforce and Shopify for the product offerings.

## Implementation

In order to work well with Salesforce, many of the built-in objects were used; products, orders, assets, etc. Custom objects were used where necessary to build out functionality for courses and enrolments. I added custom integrations for Shopify and Canvas LMS along with queues and scheduled tasks to ensure functionality within rate limits. Additional, I created visual force pages to be able to manually trigger some interactions with the integrations. I created 2 LWC applications to allow end users to manage their enrolments in courses; 1 for small groups and 1 for enterprise customers. I created quite a few triggers to help the data flow between the various Salesforce objects and provide additional validation where the standard valdiation was not sufficient. 



