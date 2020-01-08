#!/bin/bash

function usage() {
  echo
  echo "NAME"
  echo "convert-junit-assertions-to-assertj.sh - Convert most of JUnit assertions to AssertJ assertions"
  echo
  echo "It is difficult to convert ALL JUnit assertions (e.g. the ones that are multiline) but it should be good for most of them."
  echo
  echo "SYNOPSIS"
  echo "convert-junit-assertions-to-assertj.sh [Pattern]"
  echo
  echo "OPTIONS"
  echo " -h --help    this help"
  echo " [Pattern]    a find pattern, default to *Test.java if you don't provide a pattern"
  echo "              don't forget to enclose your pattern with double quotes \"\" to avoid pattern to be expanded by your shell prematurely"
  echo
  echo "EXAMPLE"
  echo " convert-junit-assertions-to-assertj.sh \"*IT.java\""
  exit 0
}

if [ "$1" == "-h" -o "$1" == "--help" ] ;
then
 usage
fi

FILES_PATTERN=${1:-*Tests.java}

echo ''
echo "Converting JUnit assertions to AssertJ assertions on files matching pattern : $FILES_PATTERN"
echo ''

FILES=`find . -name "$FILES_PATTERN"`

for EXPRESSION in \
's/assertThat(\(.*\),.*hasItem(\(.*\)))/assertThat(\1).contains(\2)/g'
do
    echo ""
    echo ""
    echo ""
    echo "$EXPRESSION"
    for FILE in $FILES
    do
        echo "  $FILE"
        sed $EXPRESSION $FILE > /tmp/$$ 
        if [ $? -eq 0 ]
        then
            chmod 777 $FILE
            cp /tmp/$$ $FILE
            rm /tmp/$$
        else
            echo "- ERRORED !!!"
        fi
    done
done

echo ''
echo 'Now optimize imports with your IDE to remove unused imports'



# 's/assertSame(\(\".*\"\),[[:blank:]]*\(.*\),[[:blank:]]*\(.*\))/assertThat(\3).as(\1).isSameAs(\2)/g' \
# 's/assertSame([[:blank:]]*\(.*\),[[:blank:]]*\(.*\))/assertThat(\2).isSameAs(\1)/g' \
# 's/assertNotSame(\(\".*\"\),[[:blank:]]*\(.*\),[[:blank:]]*\(.*\))/assertThat(\3).as(\1).isNotSameAs(\2)/g' \
# 's/assertNotSame([[:blank:]]*\(.*\),[[:blank:]]*\(.*\))/assertThat(\2).isNotSameAs(\1)/g' \
# 's/org\.junit\.Assert.assertEquals;/org.assertj.core.api.Assertions.assertThat;/g' \
# 's/org\.junit\.Assert.fail;/org.assertj.core.api.Assertions.fail;/g' \
# 's/org\.junit\.Assert.\*;/org.assertj.core.api.Assertions.*;/g'
