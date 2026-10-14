@echo off
REM Experiment 4 - start Jenkins from the Generic Java package (jenkins.war)
REM Kushagra Mehta, Roll No. 64 (2401064), Batch T13

java -version
java -jar jenkins.war --enable-future-java

REM Then open http://localhost:8080, unlock Jenkins with the initialAdminPassword,
REM install suggested plugins, create the admin user and the two pipeline jobs.
