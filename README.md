# Vico - a simple job queue using 'tmux'.

'vico' means 'queue' in Esperanto.

## Requirements
- tmux

## Installation
1. Clone this repository
```bash
git clone https://github.com/enp1s0/vico.git
```

2. Set `$PATH`
```bash
export PATH=/path/to/vico/bin:$PATH
```

## Usage
### Submit a job
```bash
qsub job.sh
```

### Check job status
```bash
qstat
```
Then you can see a list of jobs.
Top of it is a running one and the others are waiting ones.
```
vico-18: 1 windows (created Tue Dec 29 00:07:41 2020)
vico-19: 1 windows (created Tue Dec 29 00:07:42 2020)
vico-20: 1 windows (created Tue Dec 29 00:07:43 2020)
```

### Delete a job
```bash
qdel vico-N
```
or just
```bash
qdel N
```

And it is possible to delete a job which is a head of the job queue.
```bash
qdel head
```

## Configuration
### Job prologue and epilogue
You can execute any commands before and after a job by editing `scripts/prologue.sh` and `scripts/epilogue.sh`.

## Note
This script uses `$HOME/.vico_state` to manage jobs.
It is created at the first job submitting.
Please do not remove this file.
By default, the start and end time of jobs are recorded in this file.

## Environment variables
- `VICO_JOB_ID` : Job ID
- `VICO_JOB_NAME` : Job name
