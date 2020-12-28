#!/bin/sh

while true
do
	CURRENT_JOB_ID=$(command tmux ls | grep vico | sed -e "s/vico-\([0-9]*\).*/\1/" | sort -n | head -n 1)

	# If no jobs are running, Go Go Go!
	if [ ! -n "$CURRENT_JOB_ID" ]; then
		break
	fi

	# If the given job id equals to the youngest job id in the queue, Go Go Go!
	if [ $CURRENT_JOB_ID -eq $1 ]; then
		break
	fi

	sleep 5
done
