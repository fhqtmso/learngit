Put profile.ps1 under "C:\Users\fhqtmso\Documents\WindowsPowerShell"
Add following to "C:/Users/fhqtmso/.gitconfig" （change the path in cmd to your path for devenv.exe)
	[difftool "vs2013"]
		cmd = \"D:/Program Files (x86)/Microsoft Visual Studio 12.0/Common7/IDE/devenv.exe\" '//diff' \"$LOCAL\" \"$REMOTE\"
	[diff]
		tool = vs2013
	[alias]
		lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
		st = status
		co = checkout
		ci = commit
		br = branch
		last = log -1
Other difftools
	[difftool "bc4"]
		path = \"C:\Program Files\Beyond Compare 4/BCompare.exe\"
	[diff]
		tool = bc4
	[mergetool "bc4"]
		path = \"C:\Program Files\Beyond Compare 4/BCompare.exe\"
	[merge]
		tool = bc4