// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// TODO: 18/03/2026 - Bhoomi (Note to self)
// This is my first smart contract for the hackathon!!
// I am using a simple mock to show the "cross-chain" vibe transfer
// since I don't know how to write real XCM code yet.
// Next time: learn how XCM actually works lol.

contract PolkaPulse {
    // I learned about events from the Solidity docs!
    // We emit this when someone bridges their stablecoin to the high yield chains
    event VibeBridged(
        address indexed user,
        uint256 amount,
        string targetChain,
        string message
    );

    // simple mapping to track mock USDC balances
    mapping(address => uint256) public mockUSDCBalance;

    constructor() {
        // give the deployer some initial fake money just in case
        mockUSDCBalance[msg.sender] = 1000 * 10**18;
    }

    // A function to get free fake USDC to play with on the dashboard
    // fixed bug: anyone could mint unlimited, but whatever it's a mock for the hackathon
    function faucet() public {
        mockUSDCBalance[msg.sender] += 500 * 10**18; // 500 mock USDC
    }

    // The main function when user clicks "Ride the Pulse"
    function rideThePulse(uint256 amountToBridge, string memory targetChain) public {
        // make sure they have enough fake stablecoin
        require(mockUSDCBalance[msg.sender] >= amountToBridge, "Not enough mock USDC bro!");
        
        // deduct from their balance here (simulating it leaving Polkadot Hub)
        mockUSDCBalance[msg.sender] -= amountToBridge;

        // emit the event. The frontend will listen to this and show SUCCESS!
        // The message is slightly different based on the chain.
        string memory coolMessage = string(abi.encodePacked("Vibe boosted to ", targetChain, "!"));
        emit VibeBridged(msg.sender, amountToBridge, targetChain, coolMessage);
    }

    // helper to let the frontend know the current balance
    function getBalance(address user) public view returns (uint256) {
        return mockUSDCBalance[user];
    }
}
