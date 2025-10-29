function source_dir
    for f in $argv/*.fish
        source $f
    end
end
