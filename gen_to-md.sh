find . -name "*.docx" -type f -exec sh -c 'pandoc "${0}" > "${0%.docx}.md"' {} \;
