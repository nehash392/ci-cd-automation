# CI/CD Automation

This project demonstrates **CI/CD Automation** using **Jenkins** and **GitHub Actions** to deploy applications on AWS with zero downtime.

---

### Note
> ⚠️ **This is a demo version** of my original project created for portfolio and learning purposes.  
> Resource names and configurations are generic placeholders (“demo”) to ensure safe public sharing.

---

## Features
- Jenkins Pipeline automation
- GitHub Actions CI/CD workflows
- AWS ECS deployment
- Zero-downtime releases
- Rollback capability
- Multi-environment support

---


## 📂 Project Structure

```text

ci-cd-automation/
│── jenkins/
│   ├── Jenkinsfile
│   ├── scripts/
│       ├── build.sh
│       ├── deploy.sh
│       └── rollback.sh
│── .github/
│   └── workflows/
│       └── ci-cd.yml
│── app/
│   ├── src/
│   │   └── main.py
│   └── Dockerfile
│── README.md
│── .gitignore
```

## Getting Started
1. Prerequisites
Jenkins server
AWS CLI with proper credentials
GitHub repository

2. Setup
Clone the repo:
git clone https://github.com/<your-username>/ci-cd-automation.git
cd ci-cd-automation
Configure Jenkins pipeline or GitHub Actions workflow.

3. Run Pipeline
For Jenkins:
Create a pipeline job and point to the Jenkinsfile.
For GitHub Actions:
Push changes to main branch and watch the pipeline run.


## Learning Objectives : 
Automating build & deployment
Jenkins pipeline creation
GitHub Actions workflow scripting
Zero-downtime deployments
AWS ECS service updates

