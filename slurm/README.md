# Slurm

### Aliases
```shell
alias sq="squeue --me --cluster owens,pitzer,ascend --format='%.12i %.9P %.35j %.8u %.8T %.10M %.9l %.6D %R'"
alias sqpd="squeue --me --start --cluster owens,pitzer,ascend --format='%.12i %.9P %.35j %.8u %.2t %.19S %.6D %20Y %R'"
alias cpu1="srun --time=2:00:00 --nodes=1 --ntasks-per-node=1 --pty /bin/bash"
alias gpu1="srun --time=1:00:00 --nodes=1 --ntasks-per-node=1 --gpus-per-node=1 --pty /bin/bash"
alias gpu2="srun --time=1:00:00 --nodes=1 --ntasks-per-node=2 --gpus-per-node=2 --pty /bin/bash"
alias gpu4="srun --time=1:00:00 --nodes=1 --ntasks-per-node=4 --gpus-per-node=4 --pty /bin/bash"
alias gpu8="srun --time=1:00:00 --nodes=1 --ntasks-per-node=4 --gpus-per-node=4 --pty /bin/bash"
```