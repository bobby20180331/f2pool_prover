# 6block f2pool_prover

## Release-notes

- f2pool_prover v0.1.0
  - Performance improvement, hashrate doubled compare to v0.0.1

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


## On Ubuntu

1. Get an Aleo wallet address on [foxwallet](https://foxwallet.com/), [leowallet](https://www.leo.app/), [puzzle wallet](https://puzzle.online/) etc.
2. Download zkwork miner with `wget https://github.com/6block/f2pool_prover/releases/download/v0.1.0/f2pool_prover-v0.1.0.tar.gz`.
3. `tar -zvxf f2pool_prover-v0.1.0.tar.gz && cd f2pool_prover`.
4. Update your Aleo address in `run_prover.sh` and set custom name for mining server.
5. Start mining with `sudo chmod +x run_prover.sh && ./run_prover.sh`.
6. Check mining log with `tail -f prover.log`.


## On HiveOS 
1. Get an Aleo wallet address on foxwallet, leowallet, puzzle wallet etc.
2. Add New Flight Sheet with config as follows.

Configuration:
- Installation URL: https://github.com/6block/f2pool_prover/releases/download/v0.1.0/f2pool_prover-v0.1.0.tar.gz
- Hash algorithm: aleo
- Wallet and worker template: %WAL%
- Pool URL:  aleo-asia.f2pool.com:4400


3. Start Flight Sheet