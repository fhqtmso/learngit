#  Copyright (c) Microsoft Corporation.  All rights reserved.
#  
# THIS SAMPLE CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
# WHETHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
# IF THIS CODE AND INFORMATION IS MODIFIED, THE ENTIRE RISK OF USE OR RESULTS IN
# CONNECTION WITH THE USE OF THIS CODE AND INFORMATION REMAINS WITH THE USER.
#. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
#. $env:github_posh_git\profile.example.ps1
#Import-Module 'C:\Users\fhqtm\Documents\WindowsPowerShell\posh-git\src\posh-git.psd1'
#.('C:\Users\fhqtm\Documents\WindowsPowerShell\posh-git\profile.example.ps1')
$env:Path += ";C:\Program Files\Git\cmd"
Import-Module posh-git
$env:Path += ";E:\Onedrive\WEIPAN\sublime3"
Remove-Item Alias:cd
function cd { if ($args[0] -eq '-') { $pwd=$OLDPWD; } else { $pwd=$args[0]; } $tmp=pwd; if ($pwd) { Set-Location $pwd; } Set-Variable -Name OLDPWD -Value $tmp -Scope global; }
# PATH Variables for Git repositories
$layout = "d:\Onedrive\WEIPAN\Ledit-Layouts\"
$snippet = "d:\Onedrive\WEIPAN\sublime3\Data\Packages\User\ledit-snippets"
$LeditInclude = "D:\Program Files (x86)\Tanner EDA\L-Edit 11.1\upi\Interpreted_Include/"
$fdtd = "E:\Documents\DataProcessPackage\FDTD solution"
$git = "d:\OneDrive\Git\"
$matlab = "d:\OneDrive\WEIPAN\LOG\DataProcessPackage\"

