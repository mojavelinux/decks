#!/bin/sh

montage -size 1000x1000 null: room-with-view-*.jpg null: \
          -auto-orient  -thumbnail 1000x1000 \
          -bordercolor white -background gray +polaroid -resize 75% \
          -gravity center -background none -extent 1000x1000 \
          -background Beige -geometry -100+2  -tile x1  room-with-view-collage.jpg

montage -size 1000x1000 null: room-with-no-view-*.jpg null: \
          -auto-orient  -thumbnail 1000x1000 \
          -bordercolor white -background gray +polaroid -resize 75% \
          -gravity center -background none -extent 1000x1000 \
          -background Beige -geometry -100+2  -tile x1  room-with-no-view-collage.jpg
