# server list
pool=aleo-asia.f2pool.com:4400

# use your own aleo reward_address
f2pool_mining_account=your_mining_account

# set your own custom name
workername="f2pool_worker"

ps -ef|grep prover|awk '{print $2}'|xargs kill
nohup ./f2pool_prover --account $f2pool_mining_account --pool $pool --custom_name $workername >> prover.log 2>&1 &