# Benchmarking

Please see the readme of each respective repo for how benchmarking was conducted. 

# Results

| Framework | Init  | Help   | Compile | Test   | Deploy | Total   |
| --------- | ----- | ------ | ------- | ------ | ------ | ------- |
| mox       | 0.04s | 0.049s | 0.587s  | 0.625s | 0.549s | 1.850s  |
| hardhat   | -     | 0.391s | 0.398s  | 0.701s | 0.670s | 2.160s  |
| brownie   | 0.42s | 0.433s | 0.393s  | 3.229s | 3.045s | 7.520s  |
| ape       | 5.08s | 2.482s | 1.319s  | -      | 1.515s | 10.396s |
| forge     | 0.20s | 0.013s | 0.112s  | 0.350s | 0.292s | 0.967s  |

Note: For the frameworks with missing values (hardhat and ape), the total is calculated using the available data, treating the missing values as 0.

# Snekmate 35 Vyper Files Cold Compile Results

| Framework | Compile |
| --------- | ------- |
| mox       | 6.339s  |
| forge     | 10.496s |
| ape       | 16.272s |

## Setup

All tests were conducted with the following OS/techniques.

- macOS: 14.6.1 
- Apple M3 Max
- 128 GB
- command: `time` using the `total` output

## Requirements

You need a lot of stuff installed to run the benchmarks, including:

- yarn
- just
- foundry
- moccasin
- ape
- brownie
- uv
- bash

I'm not going to list install instructions for them all. 

## Running benchmarks

Run:

```bash
just
```

The `init` command was tested separately, because it was a pain to get the `justfile` working.

# Versions

- Moccasin (0.3.0)
- Hardhat (2.22.11)
- Brownie (1.20.6)
- Ape (0.8.14)
- Foundry (0.2.0) @ `fdd321b`

# Fairness

Is this fair? Not really. Each framework has tradeoffs, and any attempt to measure will result in some form of cherry-picking, so it'll never be 100% fair. But at the same time, experiments like this are the best way for us to reason about the world. So, understand each data piece has caveats, but use it to help fuel your decisions!  
