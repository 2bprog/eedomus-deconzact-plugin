# script eedomus-deconzact-plugin

$zip = ".\release\deconzact.zip"  
$version = "v0.0.4"

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
set-location $dir

if (-Not (Test-Path ".\release")) {  New-Item -Path ".\" -Name "release" -ItemType "directory"}
if (-Not (Test-Path ".\tmp"))     {  New-Item -Path ".\" -Name "tmp" -ItemType "directory"}
if (-Not (Test-Path ".\tmp\img"))     {  New-Item -Path ".\tmp" -Name "img" -ItemType "directory"}

Remove-Item ".\tmp\*.*"
Remove-Item ".\tmp\img\*.*"

if (Test-Path $zip) {  Remove-Item $zip }

Copy-Item -Path "..\img\*.png" -Destination ".\tmp\img\" -Force
Copy-Item -Path "..\php\2B_deconz.php" -Destination ".\tmp\2B_dzact.php" -Force
Copy-Item -Path "..\php\2B_deconzlist.php" -Destination ".\tmp\2B_dzactlst.php" -Force

((Get-Content -path .\tmp\2B_dzact.php -Raw) -replace '#2B_deconz#', '2B_dzact' ) | Set-Content -Path .\tmp\2B_dzcap.php
((Get-Content -path .\tmp\2B_dzact.php -Raw) -replace '#version#', $version ) | Set-Content -Path .\tmp\2B_dzcap.php
((Get-Content -path .\tmp\2B_dzactlst.php -Raw) -replace '#2B_deconzlist#', '2B_dzactlst' ) | Set-Content -Path .\tmp\2B_dzcaplst.php
((Get-Content -path .\tmp\2B_dzactlst.php -Raw) -replace '#version#', $version ) | Set-Content -Path .\tmp\2B_dzcaplst.php

Copy-Item "..\eedomus_plugin.json" -Destination ".\tmp" -Force
Copy-Item "..\readme.md" -Destination ".\tmp\readme_fr.md" -Force

$json = ".\tmp\eedomus_plugin.json"

# Garder icones eedomus 
# ---------------------
# (Get-Content $json) | Foreach-Object {$_ -replace '"{1}icon2b"{1}.{0,}"{1}.{1,}"{1}.{0,},'   , ''} | Set-Content $json

# Garder mes icones    
# ---------------------
(Get-Content $json) | Foreach-Object {$_ -replace '"{1}icon":{1}.{0,}"{1}.{1,}"icon2b"'  , '"icon"'} | Set-Content $json


$compress = @{
Path= "tmp\*.*", "tmp\img"
CompressionLevel = "Optimal"
DestinationPath = ".\$zip"
}
Compress-Archive @compress