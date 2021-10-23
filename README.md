## Powershell configuration

### Requirements:

#### OhMyPosh
- Install oh-my-posh from winget
    `winget install JanDeDobbeleer.OhMyPosh`

- Install the CaskaydiaCove Nerd Font from [link](https://www.nerdfonts.com/font-downloads)
    - Download the zip
    - Extract the zip
    - Open the folder C:/Windows/Font and drag and drop the installed fonts in there.

- Config your terminal to use the CaskaydiaCove font.

#### PSReadLine
This module allows to have auto-complete in powershell

```
Install-Module -Name PSReadLine -RequiredVersion 2.2.0-beta1 -AllowPrerelease
```

### How to load the profile in powershell

To include the profile to powershell you need to first create the default profile where powershell normally look for it
you can review that doing:
```
echo $PROFILE
```

Create the file if doesn't exist and then you can execute from there the profile from this repo.
The profile is just a powershell script, so it can execute other powershell scripts

```
NewLocation\ps_profile.ps1
```
