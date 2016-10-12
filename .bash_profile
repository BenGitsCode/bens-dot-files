nitialization for FDK command line tools.Wed May 18 00:15:08 2016
FDK_EXE="/Users/Benjamski/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/Benjamski/bin/FDK/Tools/osx"
export PATH
export FDK_EXE
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/.rbenv/bin:/usr/local/bin:$PATH"

eval "$(rbenv init -)"

