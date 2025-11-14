# subschedulingMWE
Small examples about how to use subscheduling to run concurrent tasks on Meluxina

1. Connect to Meluxina, see [here](https://docs.lxp.lu/first-steps/connecting/)
2. `cd $HOME`
3. `git clone https://github.com/LuxProvide/subschedulingMWE/`
4. cd `subschedulingMWE`
5. `sbatch -A p200xxx launcher_1GPU_improved_config_with_profiling.sh` where `p200xxx` is your project number
