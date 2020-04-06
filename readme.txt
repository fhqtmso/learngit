You Can use following terminals for git
1. github desktop
2. powershell (recommanded)
3. git bash (git for windows)

# Setup some variables in powershell
1. Put profile.ps1 under "C:\Users\fhqtmso\Documents\WindowsPowerShell" or just paste following code
-----------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------

# Setup some alias and tools in git
2. Add following to "C:/Users/fhqtmso/.gitconfig"
-----------------------------------------------------------------------------------
[user]
    name = fhqtmso
[user]
    email = fhqtmso@gmail.com
[alias]
        lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
        st = status
        co = checkout
        ci = commit
        br = branch
        last = log -1
[diff]
    tool = bc4
[difftool]
    prompt = false
[difftool "bc4"]
    cmd = "\"c:/program files/Beyond Compare 4/BComp.exe\" \"$LOCAL\" \"$REMOTE\""
[merge]
    tool = bc
[mergetool]
    prompt = false
[mergetool "bc4"]
    cmd = "\"c:/program files/Beyond Compare 4/BComp.exe\" \"$LOCAL\" \"$REMOTE\" \"$BASE\" \"$MERGED\""
[gui]
	recentrepo = D:/OneDrive/WEIPAN/LOG/DataProcessPackage
[core]
	editor = 'D:\\OneDrive\\WEIPAN\\sublime3\\sublime_text.exe' -w
-----------------------------------------------------------------------------------

# Setup Auto-launching ssh-agent on Git for Windows
ssh-agent is used to manage ssh key. ssh key is used to connect with github, more info on
https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
3. Copy the following lines and paste them into your ~/.profile (for git bash)
-----------------------------------------------------------------------------------
env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env
---------------------------------------------------------------------------------------
