# pwsh-neovim
Guide + Config files for setting up pwsh and neovim (and other useful modules)

# Results

![image](https://user-images.githubusercontent.com/39441413/188298353-da03f4d9-baba-4bcf-80f7-094c1fcc84e6.png)

Powershell setup with modules like oh-my-posh, scoop, z, posh-git, fzf (fuzzy-finder), terminal icons

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

## Installing neovim using

```
scoop install neovim
```


You can install other useful modules like curl, sudo, fzf using same logic.


## Setting up oh-my-posh and posh-git

> **Warning**
> ```
> Install-Module -Name oh-my-posh -Scope CurrentUser -Force 
> ```
> Has been deprecated

Use scoop to install oh-my-posh (You can use winget also. Your freedom of choice)

```
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
```

oh-my-posh has been installed!

Similarly download posh-git using this command:
```
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
```


## Changing theme of your powershell

you can find out where your themes are stored by doing

```
echo "$env:POSH_THEMES_PATH"
```

Lets make a config file that we will pass to the powershell profile so that it can load this config file before loading.

```
mkdir .config/powershell
nvim .config/powershell/user_profile.ps1
```
> **Note**
> .ps1 is used to write powershell commands.

![image](https://user-images.githubusercontent.com/39441413/188301107-91db49c4-2622-45c4-86a9-66579c4bfed4.png)
> **Note**
> I have chosen amro.omp.json but you can choose any theme given in [here](https://ohmyposh.dev/docs/themes)

While you are at it, you can also make aliases for a bunch of command, that will make it easy for you to use
![image](https://user-images.githubusercontent.com/39441413/188301204-6bfe98e0-a271-4a30-9bfc-fdc779cb5570.png)

And utility functions for similar reasons
![image](https://user-images.githubusercontent.com/39441413/188301223-d99b4cd0-e82a-4160-95f3-65ff3dbde695.png)

Adding this config file to the powershell profile

Execute following command to show where the profile of powershell is stored

```
echo "$PROFILE"
```

Open profile in nvim by using the following command

```
nvim $PROFILE
```

And add the following Lines.

![image](https://user-images.githubusercontent.com/39441413/188301602-91c93409-1cb9-4068-9258-197d3d675a26.png)

Now when you restart your shell, your config file will be loaded.

## Installing Terminal Icons

Execute this in powershell

```
Install-Module -Name Terminal-Icons -Repository PSGallery
```

And add this line to config file to enable Terminal Icons

![image](https://user-images.githubusercontent.com/39441413/188301460-330c2929-4d47-4d98-b33d-f2299bd44a42.png)


Result of Terminal Icons.

![image](https://user-images.githubusercontent.com/39441413/188301634-c18ca5eb-cacf-4592-9731-66234e553965.png)








