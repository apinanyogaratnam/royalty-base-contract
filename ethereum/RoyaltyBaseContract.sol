// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract RoyaltyBaseContract {
    mapping(address => uint) public balances;

    constructor() {}

    function deposit() payable public {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        balances[msg.sender] -= amount;
    }

    function getRoyaltyFee(uint amount) pure public returns (uint) {
        return (amount * 10) / 100;
    }
}
