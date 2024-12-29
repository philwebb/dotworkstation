find . -type f -name "*.java" | xargs perl -pi -e "s/Copyright\ (\d{4})(-\d{4})?\ the\ original\ author\ or\ authors/Copyright \1-2024 the original author or authors/"
