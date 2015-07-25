#!/bin/bash

SESSION='coq-ws'
# should warn if this is not xywang-pc
COQWS='/home/xywang/coq/trans/coq/'

cd $COQWS

# -d will not attach the terminal
tmux -2 new-session -d -s $SESSION 'make; bash'

# window indexed from 1, which is customized in my .tmux.conf
tmux rename-window -t $SESSION:1 coq
tmux split-window -h 'make edit; bash'
tmux select-pane -t 1

# create another window
tmux new-window -t $SESSION -a -n coqdoc
tmux new-window -t $SESSION -a -n git
tmux new-window -t $SESSION -a -n other

# done.
tmux select-window -t $SESSION:1
tmux -2 attach -t $SESSION
