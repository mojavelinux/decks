#!/bin/sh

#ASCIIDOCTOR=asciidoctor
ASCIIDOCTOR=~/projects/asciidoctor/asciidoctor/bin/asciidoctor
BACKEND_TEMPLATES=~/projects/asciidoctor/backends
TEMPLATE_ENGINE=slim
DECK=slides

if [ "$1" == "pack" ]; then
  PACK=1
fi

if [ ! -z $PACK ]; then
  $ASCIIDOCTOR -r asciidoctor-diagram -b dzslides -a docinfo2 -a data-uri -T $BACKEND_TEMPLATES/$TEMPLATE_ENGINE -o - $DECK.adoc | sed 's/<\(\/\?html\|\/\?head\|\/\?body\|section\|script\|link\|meta\|title\|style\)/\n&/g' > $DECK-packed.html
else
  # sed is used to prettify the slim output
  $ASCIIDOCTOR -r asciidoctor-diagram -b dzslides -a docinfo2 -T $BACKEND_TEMPLATES/$TEMPLATE_ENGINE -o - $DECK.adoc | sed 's/<\(\/\?html\|\/\?head\|\/\?body\|section\|script\|link\|meta\|title\|style\)/\n&/g' > $DECK.html
fi
