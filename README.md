## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```


# Reminder

Use the VM reference sheet located in [`lib/forge-std/src/Test.sol`](./lib/forge-std/src/Test.sol)

and the web version: [https://book.getfoundry.sh/forge/cheatcodes](https://book.getfoundry.sh/forge/cheatcodes)


# NOTES

this worked but garbo, need to figure out the correct script command:

forge script script/TokenV3.s.sol:TokenV3Deploy --broadcast --rpc-url botanix_testnet_rpc --legacy --private-key [your key]

the goal is command setup so we can use the default key via the .secret file when deploying but there are various errors

deployment data can be found in [`./broadcast/TokenV3.s.sol/3636/run-latest.sol`](./broadcast/TokenV3.s.sol/3636/run-latest.sol)

```
[⠊] Compiling...
No files changed, compilation skipped
Script ran successfully.

## Setting up 1 EVM.

==========================

Chain 3636

Estimated gas price: 0.01 gwei

Estimated total gas used for script: 1247897

Estimated amount required: 0.00001247897 ETH

==========================
##
Sending transactions [0 - 1].
⠉ [00:00:00] [########################################################################################] 2/2 txes (0.0s)##
Waiting for receipts.
⠙ [00:00:19] [####################################################################################] 2/2 receipts (0.0s)
##### 3636
✅  [Success]Hash: 0xfd639d874d128211888b9fb9288cc12e7cda9fdc84b68ca2e6ad077057fa7823
Contract Address: 0xAe0086B0f700d6d7d4814c4Ba1e55d3BC0dFEe02
Block: 229792
Paid: 0.00000885619 ETH (885619 gas * 0.01 gwei)


##### 3636
✅  [Success]Hash: 0x52cb9b22c1df1be305fcb9e29798d427c8a3a7a1a17a8b25574af5b800c9f9fc
Block: 229792
Paid: 0.00000070215 ETH (70215 gas * 0.01 gwei)



==========================

ONCHAIN EXECUTION COMPLETE & SUCCESSFUL.
Total Paid: 0.00000955834 ETH (955834 gas * avg 0.01 gwei)

Transactions saved to: /Users/yetim/Documents/fudgylabs/erc20-v3/broadcast/TokenV3.s.sol/3636/run-latest.json

Sensitive values saved to: /Users/yetim/Documents/fudgylabs/erc20-v3/cache/TokenV3.s.sol/3636/run-latest.json

```