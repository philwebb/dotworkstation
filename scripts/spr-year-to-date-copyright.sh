git --no-pager log --pretty=format: --name-only --since="2021-01-01" | sort | uniq | grep java | xargs perl -pi -e "s/Copyright\ (\d{4})(-\d{4})?\ the\ original\ author\ or\ authors/Copyright \1-2021 the original author or authors/"
