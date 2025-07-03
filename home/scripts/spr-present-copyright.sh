candidates=$(git ls-files | grep -e '\.java$' -e '\.kt$' -e '\.gradle$')
for candidate in $candidates
do
    perl -pi -e "s/Copyright\ (\d{4})(-\d{4})?\ the\ original\ author\ or\ authors/Copyright \1-present the original author or authors/" $candidate
done
