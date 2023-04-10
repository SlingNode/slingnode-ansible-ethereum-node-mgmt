#!/bin/bash
run_tests () {
    readarray -t dirs < <(find molecule -type d -name "$1\_*" -printf '%P\n')

    for dir in "${dirs[@]}"; do
        molecule test -s "$dir"
    done
}

run_tests lighthouse
