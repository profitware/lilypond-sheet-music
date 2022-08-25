LILYPOND=lilypond
SCRIPT=./scripts/benny_greb_language_of_drumming_words_recap_sheets.py
PRE=benny-greb-the-language-of-drumming-words-recap-sheet

all: clean sheet1 sheet2 sheet3 sheet1r sheet2r sheet3r sheet1ra sheet2ra sheet3ra sheet1rb sheet2rb sheet3rb

sheet1:
	$(SCRIPT) 1 | $(LILYPOND) -o $(PRE)1 -

sheet2:
	$(SCRIPT) 2 | $(LILYPOND) -o $(PRE)2 -

sheet3:
	$(SCRIPT) 3 | $(LILYPOND) -o $(PRE)3 -

sheet1r:
	$(SCRIPT) 1 r | $(LILYPOND) -o $(PRE)1r -

sheet2r:
	$(SCRIPT) 2 r | $(LILYPOND) -o $(PRE)2r -

sheet3r:
	$(SCRIPT) 3 r | $(LILYPOND) -o $(PRE)3r -

sheet1ra:
	$(SCRIPT) 1 ra | $(LILYPOND) -o $(PRE)1ra -

sheet2ra:
	$(SCRIPT) 2 ra | $(LILYPOND) -o $(PRE)2ra -

sheet3ra:
	$(SCRIPT) 3 ra | $(LILYPOND) -o $(PRE)3ra -

sheet1rb:
	$(SCRIPT) 1 rb | $(LILYPOND) -o $(PRE)1rb -

sheet2rb:
	$(SCRIPT) 2 rb | $(LILYPOND) -o $(PRE)2rb -

sheet3rb:
	$(SCRIPT) 3 rb | $(LILYPOND) -o $(PRE)3rb -


clean:
	@rm -f $(PRE)*
