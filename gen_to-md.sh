find . -name "*.docx" -type f -exec sh -c 'pandoc -s -o "${0%.docx}.md" "${0}"' {} \;
