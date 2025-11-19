function vim
    # zellij list-sessions | grep current | sed 's/ .*//'
    # nvim --listen /tmp/(basename $PWD).pipe $argv
    nvim $argv
end
