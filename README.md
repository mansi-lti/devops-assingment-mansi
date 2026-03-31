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
# 4. CI/CD Shell Script
## flow:
Build -> Test -> SonarQube -> Docker -> Push -> Deploy
- Created a shell script to implement CI/CD pipeline without Jekins
- Used Maven for build and testing
- Integrated SonarQube for code analysis
- Built Docker image and pushed to registry
- Deployed application to kubernetes usin kubectl
- Demonstrates end-to-end CI/CD automation using CLI
## Steps To Run:
- Make the script executable
  ``` bash
  chmod +x full-ci-cd.sh
  ```
- Ensure required tools are installed (Maven , Docker , Kubectl)
- Note:-
This script assumes required tools like Maven , Docker , and kubectl are pre-installed and configured in the environment

# 5. SonarQube Scan with Token
- Implemented SoanrQube scan using authentication token instead of username/password
- Token is passed securely using environement variable (SONAR_TOKEN)
- Added validation to ensure token is available before execution
- Demonstrate secure and controlled access for SonarQube analysis
## Steps to Run:
- Make the script executable
  ``` bash
  chmod +x sonar-dynamic-token.sh
  ```
- Export the SonarQube token:
    ``` bash
    export SONAR_TOKEN=your-token
    ```
- Run the script
    ``` bash
    ./sonar-dynamic-token.sh
    ```


