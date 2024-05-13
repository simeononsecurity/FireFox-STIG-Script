# FireFox STIG Script

[![VirusTotal Scan](https://github.com/simeononsecurity/FireFox-STIG-Script/actions/workflows/virustotal.yml/badge.svg)](https://github.com/simeononsecurity/FireFox-STIG-Script/actions/workflows/virustotal.yml)

The [Firefox V4R29](https://dl.dod.cyber.mil/wp-content/uploads/stigs/zip/U_MOZ_FireFox_V4R29_STIG.zip) isn't the easiest of STIGs to apply. 

This script will bring you up to 100% compliance minus 2 checks.

You must manually check Vul ID: **V-15770** and **V-15773**

## Ansible:
We now offer a playbook collection for this script. Please see the following:
- [Github Repo](https://github.com/simeononsecurity/Windows_STIG_Ansible)
- [Ansible Galaxy](https://galaxy.ansible.com/simeononsecurity/windows_stigs)

## Download the required files

Download the required files from the [GitHub Repository](https://github.com/simeononsecurity/FireFox-STIG-Script)

## How to run the script

**The script may be lauched from the extracted GitHub download like this:**

Windows:
```powershell
.\sos-firefoxstig.ps1
```

Linux:
```bash
sudo chmod +x ./sos-firefoxstig.sh
sudo bash ./sos-firefoxstig.sh
```

MacOS:
```bash
sudo chmod +x ./sos-build-macos-plist.sh
sudo chmod +x ./sos-firefoxstig.sh
sudo bash ./sos-build-macos-plist.sh
sudo bash ./sos-firefoxstig.sh
```

<a href="https://simeononsecurity.com" target="_blank" rel="noopener noreferrer">
  <h2>Explore the World of Cybersecurity</h2>
</a>
<a href="https://simeononsecurity.com" target="_blank" rel="noopener noreferrer">
  <img src="https://simeononsecurity.com/img/banner.png" alt="SimeonOnSecurity Logo" width="300" height="300">
</a>

### Links:
- #### [github.com/simeononsecurity](https://github.com/simeononsecurity)
- #### [simeononsecurity.ch](https://simeononsecurity.ch)
