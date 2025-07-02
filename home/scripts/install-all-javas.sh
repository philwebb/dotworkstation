#!/bin/bash
SDKMAN_DIR=~/sdkman source ~/sdkman/bin/sdkman-init.sh
for v in $(sdk list java | grep -e '-librca' | grep -v 'fx-' | grep -v -e '\$' | cut -d "|" -f 6); do sdk install java $v; done
sdk default java $(sdk list java | grep -e '-librca' | grep -v 'fx-'| grep -v -e '\$' | cut -d "|" -f 6 | grep "17\." | head -n1)
