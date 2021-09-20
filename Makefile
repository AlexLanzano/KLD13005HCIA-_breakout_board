BOARD_PCB_FILE = kicad/KLD13005HCIA_breakout_board/KLD13005HCIA_breakout_board.kicad_pcb
BOARD_OUTPUT = $(PWD)/kicad/KLD13005HCIA_breakout_board

.PHONY: debug-board
debug-board:
	python plot.py $(BOARD_PCB_FILE) $(BOARD_OUTPUT)
	zip KLD13005HCIA_breakout_board.zip $(BOARD_OUTPUT)/*.gbr $(BOARD_OUTPUT)/*.drl

.PHONY: clean
clean:
	rm -f $(BOARD_OUTPUT)/*.gbr $(BOARD_OUTPUT)/*.drl *.zip
