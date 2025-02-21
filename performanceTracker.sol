// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PerformanceTracker {
    // Define a structure to hold performance data
    struct Performance {
        uint256 score;
        uint256 timeSpent; // e.g., time spent on a task in seconds
        uint256 timestamp; // record when the data was recorded
    }
    
    // Mapping from a user's address to an array of their performance records
    mapping(address => Performance[]) public performances;
    
    // Record performance data for the caller.
    // No constructor or external imports are used.
    function recordPerformance(uint256 score, uint256 timeSpent) public {
        performances[msg.sender].push(
            Performance({
                score: score,
                timeSpent: timeSpent,
                timestamp: block.timestamp
            })
        );
    }
    
    // Retrieve a specific performance record for a given user by index.
    function getPerformance(address user, uint256 index) public view returns (uint256 score, uint256 timeSpent, uint256 timestamp) {
        require(index < performances[user].length, "Index out of bounds");
        Performance memory record = performances[user][index];
        return (record.score, record.timeSpent, record.timestamp);
    }
    
    // Get the total number of performance records for a given user.
    function getPerformanceCount(address user) public view returns (uint256) {
        return performances[user].length;
    }
}

