$statusdisplay = Get-Content -Path "F:\Scripts\status_display.txt"
If ($statusdisplay -eq "displayon")
    {
    Start-Process -FilePath "F:\Scripts\DisplayOff.bat"
    Set-Content "F:\Scripts\status_display.txt" "displayoff"
    }
ElseIf ($statusdisplay -eq "displayoff")
    {
    Start-Process -FilePath "F:\Scripts\DisplayOn.bat"
    Set-Content "F:\Scripts\status_display.txt" "displayon"
    }
Else
    {
    Write-Output "fichier status_display corrompu"
    Write-Output $statusdisplay
    Start-Sleep -Seconds 5
    }
