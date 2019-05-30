#!/bin/bash
PACKAGEDIR=$(dirname "$0")
export TEXINPUTS=".:$PACKAGEDIR:$TEXINPUTS"

$@
