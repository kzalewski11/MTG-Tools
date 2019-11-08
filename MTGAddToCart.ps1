#get clipboard and edit
(Get-Clipboard | select -Skip 1 | % {$_ -replace " \(\w*\) \d*",""}) | Set-Clipboard

#open website
Start-Process -FilePath "https://store.tcgplayer.com/massentry"
#$w1.visible=$true

#sleep 3 secs (hackily wait for website to load)
Start-Sleep -s 3

#paste into window
[System.Windows.Forms.SendKeys]::SendWait("{TAB 16}")
[System.Windows.Forms.SendKeys]::SendWait("^{v}")

#add to cart
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")