pandoc -s "Development Proposals.docx" -t markdown -o "Development Proposals.md"
pandoc -s "Goals.docx" -t markdown -o "Goals.md"
pandoc -s -o log.html log.md
