#!/usr/bin/env bash

function open() {
    search_result=$(search)
    if [[ $search_result == "" ]]; then
        return
    else
        line_number=$(echo "$search_result" | cut -d ':' -f 2)
        file_name=$(echo "$search_result" | cut -d ':' -f 1)
        vim +$line_number $file_name
    fi
}
