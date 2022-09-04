# Prompt
Import-Module posh-git
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/amro.omp.json" | Invoke-Expression

# Terminal Icons
Import-Module -Name Terminal-Icons


# PSReadLine Config - AutoCompletion
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView


# PSFzf Fuzzy finder wrapper around fzf to show files and commands
Import-Module PSFzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'


# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr

#Utility
function which($command){
	Get-Command -Name $command -ErrorAction SilentlyContinue |
		Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function cptxt($path){
        cat $path | clip
}
