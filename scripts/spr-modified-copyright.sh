git --no-pager diff --name-only HEAD~1 HEAD | grep java | xargs perl -pi -e "s/Copyright\ (\d{4})(-\d{4})?\ the\ original\ author\ or\ authors/Copyright \1-2020 the original author or authors/"
