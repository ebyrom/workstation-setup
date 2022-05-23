# Setup Script



The setup secript is executed by running the setup.sh script:

For example:

```

# run original setup script
./setup.sh
```

# Brew installed items
```==> Formulae
berkeley-db
ca-certificates
gdbm
gettext
git
grc
libidn2
libunistring
libyaml
lua
maven
md5sha1sum
mpdecimal
ncurses
openjdk
openssl@1.1
pcre2
perl
python@3.10
readline
ruby
safe
sqlite
tree
vault
vim
wget
xz

==> Casks
fly
jetbrains-toolbox
miro
shiftit
sublime-text
```
# Bash Profile

# Post Setup Tasks

## Git

Set up github personalized token to access DSG Repos in GitHub.

My DSG personalized token is stored in Lastpass for ebyrom account.

https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

## IDE Settings Sync

* Enable/Sign in for VS Code Settings Sync
* Enable/Sign in for DataGrip Settings Sync

## Mac OS

* Turn natural scroll off on mouse wheel
* For Finder, sort so all folders are shown above files.

## Fix VIM editor

Vim package snipMate is deprecated.  Opem .vimrc and add:
```
let g:snipMate = { 'snippet_version' : 1 } - to vimrc
```

## Install Jetbrains Software

### Request Jetbrains License

If you don't have one already, reqeust a Jetbrains License.

You will also submit this request at: https://jira.dcsg.com/plugins/servlet/desk/portal/21/create/399

The request type is
* Request a Software License Key 

The details are:
Name of Software :  Jetbrains All Products Pack
Workstation Name : *The name of your workstation* (Can be found by openning a terminal window i.e. DEPC02X9999JGH9)

### Install Jetbrains Software

Install Intellij and Datagrip

# Install DSG Managed Software

This script installs software that is not managed by DSG Self Service Portal.  All other software should be installed using the DSG Self Service Portal.

**NOTE: Ask to be put on Avecto Policy (needed for Homebrew and other software installs for admin priveleges)**

* Homebrew
* Microsoft
    * Outlook
    * Onedrive
    * Teams
    * To Do
    * Work
    * Powerpoint
    * Excel
    * OneNote
    * Remote Desktop
* Google Chome
* Cisco AnyConnect
* VMware Horizon Client
* Visual Studio Code
* Adobe Acrobat Reader DC
* iterm 2
* Java JDK 11.0.12
* SQL Developer
* DB Beaver
* Postman
* nodeJS
* zoom

# Other Info

## VS Code Settings Sync

 * https://code.visualstudio.com/docs/editor/settings-sync
 * Enable the plugin/sign in via Github


## Jetbrains Intellij DataGrip IDE Settings Sync

 * https://www.jetbrains.com/help/datagrip/sharing-your-ide-settings.html
 * https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html
 * Enable the IDE Settings Sync Plugin in both Editors.  Need to also be signed into Jetbrains account.

## Saving iTerm2 Preferences

* https://iterm2.com/documentation-preferences-general.html
* https://stackoverflow.com/questions/22943676/how-to-export-iterm2-profiles

## Backups for Future Refreshes

* VS Code preferences are backed up within Github via Setting Sync
* Sublime Text ???
* Intellij & Datagrip Preferences backed up and synced via IDE Settings Sync
* Save off iTerm2 Peferences
* Ensure .bashrc is backed up (Currently backed up in files/eb-bashrc)
* Back up All Files in OneDrive

## iTerm2 Preferences

* The current backup file **com.googlecode.iterm2.plist-eb1-material** is using the **material-design-colors.itermcolors** reset color scheme
* https://github.com/MartinSeeler/iterm2-material-design

# Repos Script
```
 TODO Update
```