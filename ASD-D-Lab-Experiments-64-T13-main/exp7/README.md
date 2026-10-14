# Experiment 7 - Monitoring Using Nagios

**Aim:** To implement monitoring using Prometheus / Grafana / Nagios.

Nagios Core 4.5.12 runs in Docker (`jasonrivers/nagios`) and monitors the Windows host
through NSClient++ 0.6.13 over NRPE.

| File | Contents |
|---|---|
| `commands.ps1` | Commands in the order they were run |
| `nsclient.ini` | NSClient++ modules (NRPEServer, CheckDisk, CheckSystem) and allowed hosts |
| `screenshots/` | Screens from the report |
| `ASD&D_Experiment07_64.pdf` | Report |

Host `Windows_Host_001`, services: CPU Load (`check_nrpe!check_cpu`), Memory Usage
(`check_nrpe!check_memory`), C Drive Space (`check_nrpe!check_drivesize`).
Pre-flight check: 0 errors. Web UI: http://localhost:8080/nagios/
