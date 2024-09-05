# 6block f2pool_prover

## Release-notes

- f2pool_prover v0.0.1
  - The first version with 85w + hashrate on RTX 4090

## Requirements
- OS Version: Ubuntu 20.04 +
- Nvidia Driver Version: 535.54.03 +

## Usage
```shell
Usage: f2pool_prover [OPTIONS] --account <ACCOUNT> --pool <POOL>

Options:
      --account <ACCOUNT>          Specify mining account on f2pool
      --password <PASSWORD>        Specify mining password on f2pool, leave empty if never used
      --pool <POOL>                Specify the pool(tcp) that the prover is contributing to
      --verbosity <VERBOSITY>      Specify the verbosity of the node [options: 0, 1, 2, 3] [default: 0]
      --custom_name <CUSTOM_NAME>  Specify the custom name of this worker instance [default: aleoprover]
  -g, --gpu_index <GPU_INDEXES>    Specify gpu index to solve puzzle, all gpus are used by default, eg. -g 0 -g 1 -g 2 ...
  -h, --help                       Print help
  -V, --version                    Print version
```

## Mining Tutorial

Oneline command to start:
`./f2pool_prover --pool aleo-asia.f2pool.com:4400 --account f2pool_mining_account --custom_name workername`