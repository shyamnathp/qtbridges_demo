#!/bin/bash
# filepath: cleanup.sh

# Create a temporary directory for required files
mkdir -p temp/img temp/css temp/dist temp/plugin

# Copy only needed files
cp img/python.svg temp/img/
cp img/qt_logo.webp temp/img/

# Remove old directories and move temp to their place
rm -rf img/*
mv temp/img/* img/
rmdir temp/img

# Remove demo files
rm -f demo.html

# Remove unnecessary images
rm -rf img/Android_Robot.png \
       img/Android_robot.svg.png \
       img/buildozer_venn_diagram.png \
       img/but_why.gif \
       img/but.gif \
       img/c++_python_simpsons.jpg \
       img/contactmanager.png \
       img/flet_add_markings.png \
       img/flet_add.png \
       img/flet_expand.png \
       img/flet_github.png \
       img/flet_image_code.png \
       img/flet_main.png \
       img/flet.png \
       img/github_white.png \
       img/iron-man-tony-stark.gif \
       img/kde-logo-blue-transparent.png \
       img/kde-logo-white-gray.png \
       img/kde.png

# Remove videos directory if it exists
rm -rf videos

rmdir temp