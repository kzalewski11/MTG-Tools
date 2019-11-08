$file = Read-Host -Prompt 'File Name: '
(gc $file | select -Skip 1 | % {$_ -replace " \(\w*\) \d*",""}) | sc $file