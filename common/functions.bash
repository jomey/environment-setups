function parse_git_branch () {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

# SSH Host config completion
function _ssh_completion() {
 perl -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config
}
complete -W "$(_ssh_completion)" ssh scp

function start_jupyter_lab() {
  conda activate jupyter-lab
  jupyter lab
}

