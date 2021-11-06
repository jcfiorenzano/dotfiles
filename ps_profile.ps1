oh-my-posh --init --shell pwsh --config D:\dev\dotfiles\jcf.omp.json | Invoke-Expression
#########################################################################################
# PSReadLine Configuration
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
#Set-PSReadLineOption -EditMode Vi

#function OnViModeChange {
#    if ($args[0] -eq 'Command') {
#        # Set the cursor to a blinking block.
#        Write-Host -NoNewLine "`e[1 q"
#    } else {
#        # Set the cursor to a blinking line.
#        Write-Host -NoNewLine "`e[5 q"
#    }
#}
#Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

##########################################################################################
Import-Module -Name Terminal-Icons

