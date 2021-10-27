oh-my-posh --init --shell pwsh --config D:\dev\configs\jcf.omp.json | Invoke-Expression

Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Import-Module -Name Terminal-Icons

