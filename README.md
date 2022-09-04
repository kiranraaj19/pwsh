# pwsh-neovim
Guide + Config files for setting up pwsh and neovim (and other useful modules)

# Results

![image](https://user-images.githubusercontent.com/39441413/188298353-da03f4d9-baba-4bcf-80f7-094c1fcc84e6.png)

Powershell setup with modules like ph-my-posh, scoop, z, posh-git, fzf (fuzzy-finder), terminal icons

![image](https://user-images.githubusercontent.com/39441413/188300589-b0b99143-2059-4f03-bc20-c8eeff017398.png)

Neovim setup with modules like packer, tree-sitter, lsp

# Lets Get Started With PWSH

Windows has a powershell which is built on .NET Framework which is only compatible on windows and doesnt have many features. So first install a modern powershell from Microsoft Store.

![image](https://user-images.githubusercontent.com/39441413/188300656-7c67ea23-f16a-4071-9166-f4f13df9a836.png)

Get this one.

Open powershell and click on the arrow button on the taskbar > Click on Settings

![image](https://user-images.githubusercontent.com/39441413/188300686-6e597225-3928-4b25-83f0-4dcfcf983e12.png)

Change the options to this

![image](https://user-images.githubusercontent.com/39441413/188300708-724b923d-b331-4549-99d9-dc60a923a3ea.png)

Go to Defaults > Appearance and Enable acrylic material, And bring down the opacity for transparent powershell background. (Now you are one of the modern genz cool people)

In order for extra features with fonts, Install a patched font from [Nerdfont.](https://github.com/ryanoasis/nerd-fonts)

Then again go and change the font in Defaults > Appearance > Fonts to Your patched font. (My choice was Hack). Read the docs to install the nerdfont on windows, (Simply you download a zip for a font, extract it, click on the .otf or .ttf file and press on Install to install it to your system).


## Installing scoop

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
```

Now scoop has been installed

Install all modules from your terminal now!

Now install neovim using

```
scoop install neovim
```


You can install other useful modules like curl, sudo, fzf using same logic.


## Setting up oh-my-posh

```
Install-Module -Name oh-my-posh -Scope CurrentUser -Force 
```
 
Has been deprecated

Use scoop to install oh-my-posh (You can use winget also. Your freedom of choice)

```
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
```

oh-my-posh has been installed!







