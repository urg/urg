---
title: "EWG"
date: 2024-04-10T21:51:13+01:00
draft: false
hideLastModified: true
keepImageRatio: true
tags: ["Node.js", "AWS", "Lambda", "Serverless", "OpenAPI", "MongoDB", "Terraform", "Docker", "Postgres"]
summary: "Secure Financial Services REST Api"
summaryImage: "images/1.png" 
showInMenu: false
---

{{< summaryImage >}}

## Key Technologies:
{{< tags >}}

## Company Intro:

EWG is a fintech company offering specialist services to the fiduciary, corporate, and fund sectors.

## Team Composition & My Role:

EWG has a core development team; however, the Lightspeed API project I was initially asked to design and build was structured as an independent project, where I was the sole developer.

## Functionality:

Lightspeed’s core functionality is to perform CRUD operations on beneficiaries, payments, and conversions. Due to the complexities involved in provisioning new accounts and ensuring the correct security permissions are assigned, I also created an admin API for user management. By the end of the project, there were 25 user endpoints and 27 admin endpoints.

## Security

Security is at the heart of Lightspeed. MTLS and OAuth2 were selected as industry-standard mechanisms. Additionally, I used a multi-layered approach, including Postgres Row-Level Security, custom Lambda authorizers, and custom permissions that could be scoped on a per-account endpoint basis.

## Non-repudation

As Lightspeed is based on the open banking specification, I added a JWS Signature header requirement to the specification. This requirement provides additional proof in case any client might dispute a transaction, ensuring non-repudiation when recorded.

## Rate Limiting

The service that EWG uses is subject to rate limits, so it was essential to rate limit Lightspeed as well. The upstream service also needed to be shared between Lightspeed and the core EWG application. I implemented custom rate limiting using DynamoDB, both on an overall basis and per client basis for methods that called the upstream service. Additionally, I applied API Gateway’s rate limits on a per-client basis for all endpoints.

### Documentation

As the Lightspeed API will be used by other developers, comprehensive documentation was necessary. I created and published an OpenAPI specification along with generated HTML documentation from the specification.

I developed thorough onboarding documentation and client scripts/PowerShell modules for Mac and Windows, supporting onboarding via Mac Keychain Access, Windows MMC Certificates, and OpenSSL.

Additionally, I created sample Node.js and C# projects to help clients onboard quickly, which included connecting via MTLS and both creating and validating JWS Signatures.

### Postman

I developed a complete Postman collection for both the client and admin APIs. The collection included pre-request scripts to create JWS signatures and post-request tests to validate the JWS signature from Lightspeed.


### DevOps
#### IAC

I used a combination of CloudFormation (for initial IAM roles), Terraform for the base infrastructure, and Serverless Framework to deploy the Lambda code.

#### Build Server

The build server underwent a couple of iterations. Initially, I created a Docker container to run the GitHub Actions self-hosted runner job. This container was run via an EC2 Auto Scaling Group with scheduled start/stop times. GitHub OIDC was integrated with AWS, and the GitHub Actions jobs were restricted on a per-repo/environment basis to call the deployment role within the correct AWS account.

In a second iteration, we migrated to using CodeBuild to run the GitHub Actions job, and the EC2 Auto Scaling Group was shut down.

### Automated Testing

I developed comprehensive unit tests, achieving around 95% test coverage. Additionally, I created end-to-end (e2e) tests to call each endpoint, ensuring that security permissions were functioning as expected and confirming the correctness of endpoint behavior.

The unit tests were executed as a CI job on pull requests to the main branch. The e2e tests were run post-deployment in non-production environments, with a read-only e2e test suite executed post-production deployment.

### Load Testing

I created a suite of JMeter tests, configured via CSV files to simulate different loads. The test suite included three different personas that ran various scenarios. Each line in the CSV could specify a persona and a throughput limit to adhere to defined rate limits. The clients required MTLS certificates, OAuth logins, and JWS signatures for their requests, all implemented in JMeter. Additionally, 429 responses were not considered errors; they were renamed as ‘429: name’ to facilitate a clearer display in JMeter outputs and for separate tracking.


## Videos

I used ClipChamp to create various instructional videos demonstrating how to use Postman to call different endpoints for clients. Additionally, I produced an overview demo video showcasing Lightspeed and its full functionality. This demo was featured at the [Digital Jersey launch event](https://www.digital.je/news-events/digital-events/ewg-lightspped-api-launch-event/). A short clip from the demo is available [here](videos/Lightspeed-Demo-Clip.mp4).

