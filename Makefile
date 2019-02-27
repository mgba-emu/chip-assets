all: chips.rcc

chips.qrc: $(shell ls exe[456]/???.png)
	@echo '<!DOCTYPE RCC><RCC version="1.0"><qresource>' > $@
	@for PNG in $^; do echo " <file>$$PNG</file>"; done >> $@
	@echo '</qresource></RCC>' >> $@

chips.rcc: chips.qrc $(shell ls exe[456]/???.png)
	rcc chips.qrc --binary -o chips.rcc
