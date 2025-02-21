# On-Chain Performance Tracker

## 📌 Overview
The **On-Chain Performance Tracker** is a Solidity smart contract that allows users to log and retrieve their performance metrics on the blockchain. This contract is designed for transparency, accountability, and decentralized record-keeping.

## 🔗 Contract Address
`0x8F0559e49a39cDB836f9f584bBEa7444dC381542`

## 📝 Solidity Smart Contract
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

## ⚙️ How It Works
- **Logging Performance:** Users can store their performance metric on-chain by calling `logPerformance(uint256 _metric)`.
- **Retrieving Data:** Anyone can fetch performance logs of a given user using `getPerformanceLogs(address _user)`.

## 🚀 Deployment & Usage
To deploy and interact with the contract:
1. Deploy the contract on an Ethereum-compatible blockchain.
2. Use tools like **Remix, Hardhat, or Truffle** for deployment.
3. Integrate with a Web3 provider like **MetaMask or Alchemy** to interact.

## 📂 Installation
Clone the repository and navigate to the project folder:
```sh
git clone https://github.com/yashika-kumaric/onchain-performance-tracker.git
cd onchain-performance-tracker
```

## 🤝 Contributing
Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit changes (`git commit -m "Added new feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.

## 🛡️ License
This project is licensed under the **MIT License**.

## 📬 Connect with Me
[GitHub](https://github.com/yashika-kumaric) | [Twitter](https://twitter.com/yashikarii) | [LinkedIn](https://www.linkedin.com/in/yashika-kumari-841078330/)
