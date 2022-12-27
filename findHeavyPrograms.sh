#!/bin/bash

for package in $(pacman -Qeq); do
    echo "$package: $(pactree -u $package | wc -l)"
done

