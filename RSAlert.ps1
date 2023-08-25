$DescriptionPrefix = "Remote Support Customer Client"
$SoundFilePath = "C:\Path\To\Your\SoundFile.wav"

$player = New-Object System.Media.SoundPlayer
$player.SoundLocation = $SoundFilePath

$playedServices = @{}  # Dictionary to keep track of played services

while ($true) {
    $matchingServices = Get-Service | Where-Object { $_.DisplayName -like "$DescriptionPrefix*" -and $_.Status -eq "Running" }

    foreach ($service in $matchingServices) {
        if (!$playedServices.ContainsKey($service.DisplayName)) {
            $player.Play()
            $playedServices[$service.DisplayName] = $true
        }
    }

    Start-Sleep -Seconds 5
}
