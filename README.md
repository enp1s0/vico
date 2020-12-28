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
Then you can see the list of jobs.
Top of it is a running one and the others are waiting ones.
```
vico-18: 1 windows (created Tue Dec 29 00:07:41 2020)
vico-19: 1 windows (created Tue Dec 29 00:07:42 2020)
vico-20: 1 windows (created Tue Dec 29 00:07:43 2020)
```


### Delete a job
```
qdel vico-N
```
