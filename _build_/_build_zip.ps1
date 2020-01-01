$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
set-location $dir

if (-Not (Test-Path ".\release")) {  New-Item -Path ".\" -Name "release" -ItemType "directory"}
if (-Not (Test-Path ".\tmp"))     {  New-Item -Path ".\" -Name "tmp" -ItemType "directory"}
if (-Not (Test-Path ".\tmp\img"))     {  New-Item -Path ".\tmp" -Name "img" -ItemType "directory"}

Remove-Item ".\tmp\*.*"
Remove-Item ".\tmp\img\*.*"

$zip = ".\release\deconzact.zip"  
if (Test-Path $zip) {  Remove-Item $zip }

# Get-Content -Path "C:\Temp\SourceFile.txt" | Out-File -FilePath "C:\Converted\DestFile.txt" -Encoding ascii
# New-Item -Path "c:\" -Name "logfiles" -ItemType "directory"

# Copy-Item -Path "..\img\deconzact.*" -Destination ".\tmp\img\" -Force

Copy-Item -Path "..\img\*.png" -Destination ".\tmp\img\" -Force
Copy-Item -Path "..\php\*.php" -Destination ".\tmp" -Force
Copy-Item "..\eedomus_plugin.json" -Destination ".\tmp" -Force
Copy-Item "..\readme_fr.md" -Destination ".\tmp" -Force

# converion UTF8 vers ansi
Get-Content -Path "..\eedomus_plugin.json" | Out-File -FilePath ".\tmp\eedomus_plugin.json" -Encoding ASCII
Get-Content -Path "..\readme_fr.md" | Out-File -FilePath ".\tmp\readme_fr.md" -Encoding ASCII

# Template : (Get-Content $json) | Foreach-Object {$_ -replace 'XX', 'YY'} | Set-Content $file.$json
$json = ".\tmp\eedomus_plugin.json"
# (Get-Content $json) | Foreach-Object {$_ -replace '"plugin_id": "bbdeconzact"'    , '"plugin_id": "bbdeconzacti"'} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"name_fr": "Actionneurs - deConz"', '"name_fr": "Actionneurs - deConz [Internal]"'} | Set-Content $json
,
(Get-Content $json) | Foreach-Object {$_ -replace '"prise.png","icon2b":'     , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"prise_b2.png","icon2b":'  , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"prise_b1.png","icon2b":'  , ''} | Set-Content $json

(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_on.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_off.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_mid.png","icon2b":'   , ''} | Set-Content $json

(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_cold.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_warm.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_02.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_03.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_04.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_05.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_06.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_07.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_08.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_38.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_43.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"lamp_46.png","icon2b":'   , ''} | Set-Content $json

(Get-Content $json) | Foreach-Object {$_ -replace '"heartbeat.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"heartbeat_c2.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"heartbeat_c1.png","icon2b":'   , ''} | Set-Content $json

(Get-Content $json) | Foreach-Object {$_ -replace '"wait.png","icon2b":'   , ''} | Set-Content $json
(Get-Content $json) | Foreach-Object {$_ -replace '"simulation.png","icon2b":'   , ''} | Set-Content $json


$compress = @{
Path= "tmp\*.*", "tmp\img"
CompressionLevel = "Optimal"
DestinationPath = ".\$zip"
}
Compress-Archive @compress