# 1. Jenkins Pipeline (Maven)
### Pipeline Flow:-
Source code -> Build -> Test -> SonarQube -> Package -> Docker -> Push -> Deploy
- Implemented a Jenkins CI/CD pipeline for a Maven-based Java application
- Pipeline includes stages like checkout , build , unit testing , functional testing, and packaging
- Integrates SonarQube for code quality analysis
- Built Docker image and pushed it t JFrog registry
- Included steps for Nexus artifact storage and Argo CD deployemnt
- Represented as end-to-end CI/CD workflow

# 2. Jenkins Pipeline (Python)
## Pipeline Flow:-
Source code -> Build -> Test -> SonarQube -> Package -> Docker -> Push -> Deploy
- Implemented a Jenkins CI/CD pipeline for a Python application
- Installed dependencies using requirements.txt
- Built Python package (Wheel foramt)
- Performed unit testing using pytest
- Integrated SonarQube for code quality analysis
- Built Docker image and pushed it to JFrog registry
- Included steps for Nexus artifacts storage and Argo CD deployment

# 3. Git to S3 Script
## Flow: 
Git Repo -> Clone -> Upload -> S3
- Created a shell script to clone a Git repositry
- Used AWS CLI to upload files to an s3 bucket
- Used aws s3 sync for efficinet file transfer
- Script automates uploading code from Git to cloud storage
## Steps to run:-
- Make the script executable
  ``` bash
  chmod +x git-to-s3.sh
  ```
- configure AWS CLI before execution:
  ``` bash
  aws configure
  ```


