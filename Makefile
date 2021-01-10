
# _____     ___ ____     ___ ____
#  ____|   |    ____|   |        | |____|
# |     ___|   |____ ___|    ____| |    \    PS2DEV Open Source Project.
#-----------------------------------------------------------------------
# Copyright 2001-2004, ps2dev - http://www.ps2dev.org
# Licenced under Academic Free License version 2.0
# Review ps2sdk README & LICENSE files for further details.
#
# $Id: Makefile.sample 1150 2005-06-12 11:42:08Z pixel $
CXX = g++
CC = gcc

EE_BIN =tyrian

EE_OBJS =  arg_parse.o backgrnd.o animlib.o cJSON.o config.o destruct.o editship.o episodes.o file.o font.o fonthand.o game_menu.o helptext.o joystick.o jukebox.o keyboard.o lds_play.o loudness.o lvllib.o lvlmast.o mainint.o menus.o mingw_fixes.o mouse.o mtrand.o musmast.o network.o nortsong.o nortvars.o opentyr.o opl.o palette.o params.o pcxload.o pcxmast.o picload.o player.o scroller.o setup.o shots.o sizebuf.o sndmast.o sprite.o starlib.o tyrian2.o varz.o vga_palette.o vga256d.o video.o video_scale.o video_scale_hqNx.o xmas.o
		
          


CFLAGS += -O3 -DTARGET_DINGUX -Os -fno-builtin-memcmp -fno-builtin-memcpy -fno-builtin-memset -std=c99 

$(EE_BIN): $(EE_OBJS)
	$(CC) -o $(EE_BIN) $(EE_OBJS) -lSDL




run: $(EE_BIN)
	ps2client execee host:$(EE_BIN)

reset:
	ps2client reset

clean:
	rm -f $(EE_BIN) $(EE_OBJS)


















