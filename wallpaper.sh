#!/bin/bash

# directory  for dark and light wallpapers
DARK_WALLPAPER_DIR="/home/zeref/Pictures/wallpaper/dark"
LIGHT_WALLPAPER_DIR="/home/zeref/Pictures/wallpaper/light"

# Pick a random wallpaper for each
DARK_WALLPAPER=$(find "$DARK_WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)
LIGHT_WALLPAPER=$(find "$LIGHT_WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)

# Set wallpapers for light and dark themes
gsettings set org.gnome.desktop.background picture-uri-dark "file://$DARK_WALLPAPER" 
gsettings set org.gnome.desktop.background picture-uri "file://$LIGHT_WALLPAPER"

