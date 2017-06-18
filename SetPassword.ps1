Param(
	[ValidateScript({Test-Path -Path $_ -PathType Leaf})]
	[string]
	$passwordFile
)

$setPass = Get-Content $passwordFile
$token = "\*\*SERVERPASSWORD\*\*"

(Get-Content .\GameUserSettings.ini)|ForEach-Object {$_ -replace $token,$setPass}|Set-Content .\GameUserSettings.ini
