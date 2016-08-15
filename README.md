[![Build status](https://ci.appveyor.com/api/projects/status/e7c4l5272uwh0nic?svg=true)](https://ci.appveyor.com/project/devblackops/ovf-active-directory)

# OVF.Active.Directory

## Overview
This is a set of [Pester](https://github.com/pester/Pester) / [poshspec](https://github.com/Ticketmaster/poshspec) tests designed to test the
basic operation of an Active Directory domain controller. These Pester tests have been packaged into a module according to the
[Operation Validation Framework](https://github.com/PowerShell/Operation-Validation-Framework) layout.

### Current tests

* DNS
  * DNS Service status
  * DNSCache service status
  * TCP port 53 responds

* Global Catalog
  * TCP port 3268 responds

* AD Domain Services
  * NDTS service status
  * NetLogon service status

* Key Distribution Center
  * Kdc service status

* AD Web Services
  * ADWS service status
  * TCP port 9389 responds

* LDAP
  * TCP port 389 responds

* DFS
  * Dfs service status
  * DFSR service status

## Example Output
![Example Pester output](/Media/example.png)