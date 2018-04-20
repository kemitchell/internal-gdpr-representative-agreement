agreement.docx: agreement.cform signatures.json styles.json blanks.json
	npx commonform render --format docx --title "EU Representative Agreement" --blanks blanks.json --styles styles.json --signatures signatures.json --number outline --left-align-title --indent-margins < $< > $@

.PHONY: clean

clean:
	rm -f agreement.docx
