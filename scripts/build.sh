#!bin/bash
mvn clean verify --file ./simple-api/pom.xml org.jacoco:jacoco-maven-plugin:prepare-agent install sonar:sonar -Dsonar.projectKey=Renizmy_correction-tp1  
