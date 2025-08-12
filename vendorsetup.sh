#!/bin/bash

# Function to clone if directory doesn't exist
clone_if_missing() {
    local repo_url=$1
    local branch=$2
    local target_dir=$3
    
    if [ ! -d "$target_dir" ]; then
        echo "Cloning $repo_url to $target_dir"
        git clone "$repo_url" -b "$branch" "$target_dir"
    else
        echo "$target_dir already exists, skipping clone"
    fi
}

# Git clones
clone_if_missing "https://github.com/AAMIRR-ALI/android_hardware_oplus" "sixteen" "hardware/oplus"
clone_if_missing "https://github.com/XXBADRGXX/New_vendor_realme_bitra" "16" "vendor/realme/bitra"
clone_if_missing "https://github.com/XXBADRGXX/kernel_realme_bitra" "15" "kernel/realme/sm8250"
clone_if_missing "https://gitlab.com/badr98-t/proprietary_vendor_oplus_camera" "15.0"  "vendor/oplus/camera"


echo "==== Patch application complete ===="