---
title: "Do You Need A"
date: 2019-06-03T21:51:13+01:00
draft: true
hideLastModified: true
keepImageRatio: true
tags: ["Python", "MicroPython", "Pico", "AWS", "IOT", "React"]
summary: "Geek-Approved Advertising"
summaryImage: "images/doyouneeda.png" 
showInMenu: false
---

{{< summaryImage >}}

## Key Technologies:
{{< tags >}}

## Project Intro:

[DoYouNeedA](http://doyouneeda.co) offers a digital badge & wifi access point to advertise yourself at conferences and events.

## Idea Background

There was a period in Q2 2023 where contracts were almost non-existent. I was planning on attending the AWS Summit 
in London and had an idea to use a wifi access point with the name DoYouNeedADev and use that promote my availablity for 
contract work. 

I was prototyping another project using a pico w and thought that might be a fun way of creating the access point
as its quite unique and would appeal to the Geeks in the audience as well as being portable power friendly and not requiring laptop to always be on.

When sourcing materials, I can across the [Badger 2040 W](https://thepihut.com/products/badger-2040-w-pico-w-aboard-badger-w-only) and realised that integrating a badge with the wifi access point was
definitely the way to go as this makes the device easily visible to other people.


## Project Details:

### Access Point
For the wifi access point, I wanted to use a [captive portal](https://en.wikipedia.org/wiki/Captive_portal) in order to ensure my website immediately loaded when people connected to the wifi.  There were several hobbist open source captive portal repos, however, they only offered dns services and not dhcp. As the dns code was mostly hardcoded and the 
projects were not unit tested, I decided to create my own [dns](https://github.com/urg/micropython-captive-dns-server) & [dhcp](https://github.com/urg/micropython-captive-dhcp-server) projects. These are full service implementations, but rather designed to meet a minimal implementation required to support a captive. 

### Badge
