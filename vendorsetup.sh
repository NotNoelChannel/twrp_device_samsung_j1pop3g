#!/bin/bash
# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

PRODUCT="omni" # Change this accordingly

CURRENT=$(dirname $(readlink -f $0))
DEVICE=$(cut -c19- <<< $(grep -o "ro.product.device=\w*" $CURRENT/default.prop))

for i in eng userdebug; do
add_lunch_combo ${PRODUCT}_${DEVICE}-${i};
done
