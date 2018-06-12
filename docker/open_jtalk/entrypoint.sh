#!/bin/sh

if [ -z "$OPEN_JTALK_VOICE_FILE" ]; then
  OPEN_JTALK_VOICE_FILE=/usr/local/lib/MMDAgent_Example-1.7/Voice/mei/mei_bashful.htsvoice
fi

if [ -z "$OPEN_JTALK_DIC_DIR" ]; then
  OPEN_JTALK_DIC_DIR=/usr/local/lib/open_jtalk_dic_utf_8-1.09
fi

if [ -z "$OPEN_JTALK_OPTIONS" ]; then
  OPEN_JTALK_OPTIONS="-s 48000 -p 240"
fi

OUTPUT_FILE=`mktemp`

echo open_jtalk -m $OPEN_JTALK_VOICE_FILE -x $OPEN_JTALK_DIC_DIR -ow $OUTPUT_FILE $OPEN_JTALK_OPTIONS >&2
open_jtalk -m $OPEN_JTALK_VOICE_FILE -x $OPEN_JTALK_DIC_DIR -ow $OUTPUT_FILE $OPEN_JTALK_OPTIONS
cat $OUTPUT_FILE
