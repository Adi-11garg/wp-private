# Terraform high availability infrstructure on AWS
=========

This repository contains terraform configuration file and Jenkins file to launch high availability infrastructure on AWS with WordPress as Frontend application and RDS MySQL database and with end to end monoitoring and logging with TIG and EFK.

Requirements
------------

- AWS account
- EC2 instance with Terraform and Jenkins configured
- An AMI configured with Nginx, PHP and WordPress code
- IAM service role attach with EC2 instance running Jenkins

Setup
------------

### AMI Setup

- Launch EC2 instance with Amazon Linux 2 AMI
- Install Nginx, PHP and required packages
- Configure Nginx to run WordPress application
- Install and configure Tegeraf and Fluentd for collecting matrix and log
- Create Amazon AMI from it in the region you want to use it

### Jenkins Instance Setup

- Launch EC2 instance with your choice of AMI
- Install latest version of Java
- Install and Configure Jenkins
- Install and configure Terraform
- Give appropiate permission to jenkins user
- Create aws role and attach with ami to access aws services

### GitHub Setup

- Clone the repository
- Set webhook to trigger Jenkins job
- Put the terraform configuration file and Jenkins file into repository

### Jenkins Job Setup

- Install required Jenkins plugins
- Create pipeline job
- Add GitHub repository url as SCM
- Set GitHub Poll SCM
- Push your changes or run the job the provision the infrastructure

### Setup end to end monitoring

- Launch EC2 instance in public subnet create by Terraform
- Install InfluxDB, Grafana, Elastic Search and Kibana
- Configiure them for logging and monitoring
- Base AMI is already configired with agent to collect log

### Architecture Diagram

[Architecture Diagram]("./static/architecture_diagram.png")