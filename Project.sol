// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    constructor() {

        balances[msg.sender] = totalSupply;     }

    function mint(address account, uint256 value) public {
        require(account != address(0), "Invalid address");
        
        totalSupply += value;
        balances[account] += value;
    }

    function burn(address account, uint256 value) public {
        require(account != address(0), "Invalid address");
        require(balances[account] >= value, "Insufficient balance");

        totalSupply -= value;
        balances[account] -= value;
    }
}
