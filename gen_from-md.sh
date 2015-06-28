find . -name "*.md" -type f -exec sh -c 'pandoc -s -o "${0%.md}.html" "${0}"' {} \;
find . -name "*.md" -type f -exec sh -c 'pandoc -s -o "${0%.md}.docx" "${0}"' {} \;
