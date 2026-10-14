# Experiment 7 - Monitoring using Nagios (Windows host, NSClient++ over NRPE)
# Kushagra Mehta, Roll No. 64 (2401064), Batch T13
# Commands as in ASD&D_Experiment07_64.pdf.

docker --version
docker version
docker pull jasonrivers/nagios:latest
docker run --name nagios4 -d -p 8080:80 jasonrivers/nagios:latest
docker ps
# Web UI: http://localhost:8080/nagios/  (nagiosadmin)

# NSClient++ 0.6.13 x64 on the Windows host (config: nsclient.ini)
Start-Process msiexec.exe -ArgumentList '/i', "$env:USERPROFILE\Downloads\NSCP-0.6.13-x64.msi", 'ADDLOCAL=ALL', '/qn', '/norestart' -Wait
Get-Service nscp

# NRPE checks from the Nagios container to the Windows host
docker exec nagios4 sh -c "/opt/nagios/libexec/check_nrpe -H host.docker.internal"
docker exec nagios4 sh -c "/opt/nagios/libexec/check_nrpe -H host.docker.internal -c check_cpu"
docker exec nagios4 sh -c "/opt/nagios/libexec/check_nrpe -H host.docker.internal -c check_drivesize"
docker exec nagios4 sh -c "/opt/nagios/libexec/check_nrpe -H host.docker.internal -c check_memory"

# Windows_Host_001 with CPU Load, Memory Usage and C Drive Space (check_nrpe!check_cpu,
# check_nrpe!check_memory, check_nrpe!check_drivesize), then validate the config
docker exec nagios4 /opt/nagios/bin/nagios -v /opt/nagios/etc/nagios.cfg
