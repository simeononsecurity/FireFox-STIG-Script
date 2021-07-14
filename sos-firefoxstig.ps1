#SimeonOnSecurity - https://simeononsecurity.ch
#https://github.com/simeononsecurity/FireFox-Privacy-Script/
#https://www.itsupportguides.com/knowledge-base/tech-tips-tricks/how-to-customise-firefox-installs-using-mozilla-cfg/

#Continue on error
$ErrorActionPreference= 'silentlycontinue'

#Require elivation for script run
#Requires -RunAsAdministrator

$firefox64 = "C:\Program Files\Mozilla Firefox"
$firefox32 = "C:\Program Files (x86)\Mozilla Firefox"

Write-Host "Installing Firefox Configurations - Please Wait." -ForegroundColor White -BackgroundColor Black
Write-Host "Window will close after install is complete" -ForegroundColor White -BackgroundColor Black
If ((Test-Path -Path $firefox64) -eq $true){
    Copy-Item -Path .\Files\Config\* -Destination $firefox64 -Force -Recurse
    Write-Host "Firefox 64-Bit Configurations Installed" -ForegroundColor Green -BackgroundColor Black
}Else {
    Write-Host "FireFox 64-Bit Is Not Installed" -ForegroundColor Red -BackgroundColor Black
}
If ((Test-Path -Path $firefox32) -eq $true){
    Copy-Item -Path .\Files\Config\* -Destination $firefox32 -Force -Recurse
    Write-Host "Firefox 32-Bit Configurations Installed" -ForegroundColor Green -BackgroundColor Black
}Else {
    Write-Host "FireFox 32-Bit Is Not Installed" -ForegroundColor Red -BackgroundColor Black
}

.\Files\LGPO\LGPO.exe /g .\Files\GPO\
