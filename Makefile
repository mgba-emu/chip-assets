all: chips.rcc

chips.rcc: chips.qrc $(shell ls exe[456]/???.png)
	rcc chips.qrc --binary -o chips.rcc
