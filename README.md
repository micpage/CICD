# CICD
Liquibase and Db2 CI/CD

Mehrere Möglichkeiten zur Steuerung von Liquibase (https://www.liquibase.org):
- per Maven (https://plugins.jenkins.io/maven-plugin/ sowie https://mvnrepository.com/artifact/org.liquibase/liquibase-maven-plugin)
- per Liquibase-Runner-Plugin (https://plugins.jenkins.io/liquibase-runner/)
- per RAW (Aufruf in der Shell, mit dem kompletten Funktionsumfang von Liquibase)
Achtung auf Reihenfolge/Gültigkeit der Einstellungen bei mehrfach Definitionen [Configuration Hierarchy (https://docs.liquibase.com/concepts/basic/liquibase-environment-variables.html)]

Unterschiedliche Definitionen der Changelogs (https://docs.liquibase.com/concepts/basic/changelog.html)

config.xml in Jenkins importieren
- Download jenkins-cli.jar und Kommandos per https://<jenkins:PORT>/cli/
- Linux:
  java -jar jenkins-cli.jar -s https://server --auth <user>:<token> -webSocket  create-job newjob < config.xml
- Windows Powershell:
  Get-Content .\config.xml | java -jar jenkins-cli.jar -s https://server --auth <user>:<token> -webSocket create-job newJob
