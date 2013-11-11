#!/bin/sh

RESOLUTION_X=1280
#RESOLUTION_Y=800
RESOLUTION_Y=720

# set resolution to highest resolution available
export JAVA_HOME=$HOME/opt/java-8-oracle
$HOME/opt/deck2pdf/bin/deck2pdf --width=$RESOLUTION_X --height=$RESOLUTION_Y --profile=dzslides $HOME/projects/decks/discover-zen-writing-asciidoc-lightning/slides.html
