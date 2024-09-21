# Benchmarking

Please see the readme of each respective repo for how benchmarking was conducted. 

# Results

Certainly! Here's the data formatted in a markdown chart:

| Framework | Init  | Help   | Compile | Test   | Deploy | Total   |
| --------- | ----- | ------ | ------- | ------ | ------ | ------- |
| mox       | 0.04s | 0.049s | 0.641s  | 0.625s | 0.549s | 1.904s  |
| hardhat   | -     | 0.391s | 0.398s  | 0.701s | 0.670s | 2.160s  |
| brownie   | 0.42s | 0.433s | 0.393s  | 3.229s | 3.045s | 7.520s  |
| ape       | 5.08s | 2.482s | 1.319s  | -      | 1.515s | 10.396s |
| forge     | 0.20s | 0.013s | 0.112s  | 0.350s | 0.292s | 0.967s  |

Note: For the frameworks with missing values (hardhat and ape), the total is calculated using the available data, treating the missing values as 0.

## Setup

All tests were conducted with the following OS/techniques.

- macOS: 14.6.1 
- Apple M3 Max
- 128 GB
- command: `time` using the `total` output

## Running benchmarks

To run all benchmarks, you'll need [just](https://github.com/casey/just) installed, then run:

```bash
just
```

The `init` command was tested separately, because it was a pain to get the `justfile` working.

# Versions

- Moccasin (0.2.3) @ `44686b0`
- Hardhat (2.22.11)
- Brownie (1.20.6)
- Ape (0.8.14)
- Foundry (0.2.0) @ `a33fc1d`

# Fairness

Is this fair? Not really. Each framework has tradeoffs. So a blanket look like this looking at the warm cache isn't great. 