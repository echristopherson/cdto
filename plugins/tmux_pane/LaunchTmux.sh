#!/bin/sh

# LaunchTmuxPane.sh
# tmux
#
# Created by Eric Christopherson on 11/17/14.
# Based on original plugin:
#
# LaunchXTerm.sh
# X11_xterm
#
# Created by James Tuley on 2/18/07.
# Copyright 2007 Jay Tuley. All rights reserved.

/usr/local/bin/tmux new-window
open -b com.googlecode.iterm2
