find . -name "*.md" -type f -exec sh -c 'pandoc "${0}" > "${0%.md}.html"' {} \;
find . -name "*.md" -type f -exec sh -c 'pandoc "${0}" > "${0%.md}.docx"' {} \;
