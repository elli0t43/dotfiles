Import-Module Terminal-Icons

# PSReadLine autocompletion
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView


# PSfzf 
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


Function notes_function {
    Start-Process "C:\Program Files\Neovide\neovide.exe" -ArgumentList "C:\Users\elli0t43\Documents\Notes"
}

Function nvim_config_function {
    Start-Process "C:\Program Files\Neovide\neovide.exe" -ArgumentList "C:\Users\elli0t43\AppData\Local\nvim\"
}

Function wsl_shutdown_function {
    Start-Process "C:\Windows\system32\wsl.exe" -ArgumentList "--shutdown"
}

Function kali_function {
    Start-Process "wt" -ArgumentList "-w 0 nt C:\Windows\system32\wsl.exe -d kali-linux" 
}
Set-Alias -Name notes -Value notes_function
Set-Alias -Name less -Value 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias -Name nvim-config -Value nvim_config_function
Set-Alias -Name kali -Value kali_function
Set-Alias -Name swsl -Value wsl_shutdown_function
