set -l color00 '#101923'
set -l color01 '#D4878F'
set -l color02 '#8CAF9A'
set -l color03 '#D2AD68'
set -l color04 '#84A9C7'
set -l color05 '#B09ABF'
set -l color06 '#86B4BF'
set -l color07 '#B7C8D4'
set -l color08 '#8A9AAA'

set -l non_color_opts
for arg in (string split ' ' -- $FZF_DEFAULT_OPTS)
    if not string match -q -- '--color*' $arg
        set -a non_color_opts $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$non_color_opts --color=bg+:$color00,bg:$color00,spinner:$color06,hl:$color04 --color=fg:$color07,header:$color04,info:$color02,pointer:$color06 --color=marker:$color06,fg+:$color07,prompt:$color02,hl+:$color04"
