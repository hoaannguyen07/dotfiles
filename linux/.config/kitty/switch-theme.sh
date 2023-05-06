#!/bin/bash

cur_theme=''
themes=()

get_theme_names() {
    # reset theme list
    themes=()

    themes_dir=./themes

    # loop through all files inside of the theme directory
    # each entry will be have the path "./themes/*"
    for entry in "$themes_dir"/*
    do
        # get file name while truncating path & extension
        if [[ $entry =~ ([^\/]+?)\.[^.]*$|$ ]]; then 
            # echo "${BASH_REMATCH[1]}"
            themes+=("${BASH_REMATCH[1]}")
        fi
    done

    # echo "${themes[*]}"
}

print_themes() {
    echo "Available themes include:"

    i=1
    for theme in "${themes[@]}"
    do
        echo "${i}) ${theme}"
        (( i++ ))
    done
}

get_cur_theme() {
    theme_conf_content=$(cat theme.conf) # "include themes/theme-name.conf"

    # get file name while truncating path & extension
    if [[ $theme_conf_content =~ ([^\/]+?)\.[^.]*$|$ ]]; then 
        cur_theme="${BASH_REMATCH[1]}"
    fi
}


while getopts ":hcts:" OPTION 
do
    case $OPTION in
        h)  # help
            echo "OPTIONS:"
            echo "      -h                      Help menu"
            echo "      -c                      Get Kitty's current theme"
            echo "      -t                      Display Kitty's available themes"
            echo "      -s [<theme>]            Switch Kitty's theme to [<theme>]"
            ;;
        c)  # current theme
            get_cur_theme
            echo "${cur_theme}"
            ;;
        t)  # available themes
            get_theme_names
            print_themes
            ;;
        s)  # switch themes
            get_theme_names

            theme_name=${OPTARG}

            # if the theme name is in the list of themes, then it is a valid theme
            # ${themes[*]} is a space-separated list of themes (can now use regex)
            if [[ "${themes[*]}" =~ (^|[[:space:]])${theme_name}($|[[:space:]]) ]] # only true for exact matches, not subwords
            then
                # switch to the new theme
                echo "include themes/${theme_name}.conf" > theme.conf # line to determine kitty theme
                echo "successfully changed theme to ${theme_name}"
            else
                echo "${theme_name} is NOT a valid theme"
                print_themes
            fi
            ;;
        
        ?)  # unknown flags
            echo "Invalid option: -${OPTARG}" >&2
            exit 1
            ;;
    esac
done
shift "$(($OPTIND -1))"
