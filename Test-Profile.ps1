$devDir      = 'Z:\Samuel\star citizen\HCS Translation'
$prodDir     = 'C:\Users\Samuel\AppData\Roaming\VoiceAttack\HCS VoicePacks\Custom VoiceTriggers'
$profileName = 'French Event Horizon'

Clear-Host

Copy-Item "$($prodDir)\$($profileName).hcs" -Destination "$($devDir)\backups\$($profileName).hcs.$(Get-Date -Format 'yyyyMMddHHmmss')" | Out-Null

Copy-Item "$($devDir)\$($profileName).hcs"  -Destination "$($prodDir)\$($profileName).hcs" -Force | Out-Null
