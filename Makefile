LILYPOND=lilypond
SCRIPT=./scripts/benny_greb_language_of_drumming_words_recap_sheets.py
PRE=benny-greb-the-language-of-drumming-words-recap-sheet

all: clean sheet1 sheet2 sheet3

sheet1:
	$(SCRIPT) 1 | $(LILYPOND) -o $(PRE)1 -

sheet2:
	$(SCRIPT) 2 | $(LILYPOND) -o $(PRE)2 -

sheet3:
	$(SCRIPT) 3 | $(LILYPOND) -o $(PRE)3 -

clean:
	@rm -f $(PRE)*
