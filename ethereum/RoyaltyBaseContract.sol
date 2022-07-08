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
}
