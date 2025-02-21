# On-Chain Performance Tracker

## Overview
This repository contains a Solidity smart contract that logs performance metrics on-chain. It is a simple contract that allows users to record performance data, which can be retrieved later. No imports, constructors, or input fields are used in the contract.

## Contract Address
`0x8F0559e49a39cDB836f9f584bBEa7444dC381542`

## Solidity Smart Contract
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PerformanceTracker {
    struct PerformanceData {
        uint256 timestamp;
        uint256 metric;
    }

    mapping(address => PerformanceData[]) private performanceLogs;

    function logPerformance(uint256 _metric) public {
        performanceLogs[msg.sender].push(PerformanceData(block.timestamp, _metric));
    }

    function getPerformanceLogs(address _user) public view returns (PerformanceData[] memory) {
        return performanceLogs[_user];
    }
}
```

## How It Works
1. **Logging Performance:** Users can call `logPerformance(uint256 _metric)` to store their performance metric on-chain.
2. **Retrieving Data:** Anyone can call `getPerformanceLogs(address _user)` to fetch the performance logs of a given user.

## Deployment & Usage
- Deploy the contract on an Ethereum-compatible blockchain.
- Use a Web3 provider like Metamask or Hardhat to interact with the contract.

## Installation
To set up the project locally, follow these steps:

```sh
git clone https://github.com/yourusername/onchain-performance-tracker.git
cd onchain-performance-tracker
```

## Contributing
Contributions are welcome! Please open an issue or submit a pull request.

## License
This project is licensed under the MIT License.


