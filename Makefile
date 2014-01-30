HOST = ixtab.edu.isy.liu.se

all: compile sync run

init:
	ssh -Y $(liu_id)@$(HOST) \
		"mkdir tsea83"

compile:
	./assemble $(prog) > $(prog).mia

sync:
	rsync -rlp --exclude '.git' . $(liu_id)@$(HOST):tsea83

run: sync
	ssh -Y $(liu_id)@$(HOST) \
		"cd tsea83; module add BUSSENLAB; lmia $(prog).mia"
