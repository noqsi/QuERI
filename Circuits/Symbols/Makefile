all : ProASIC.lib

clean :
	rm -rf ProASIC.lib

# Put kipart in a local venv

VENV=kipart.venv
ACTIVATE=$(VENV)/bin/activate
KIPART=$(VENV)/bin/kipart

$(VENV) : 
	python3 -m venv $(VENV)

$(KIPART) : $(VENV)
	source $(ACTIVATE) && pip install kipart

ProASIC.lib : $(KIPART) ProASIC.csv
	source $(ACTIVATE) && kipart ProASIC.csv --fill no_fill -w -o ProASIC.lib