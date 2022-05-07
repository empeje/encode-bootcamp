// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract VolcanoCoin {
    uint256 totalSupply =  10000;
    address owner;
    mapping (address => uint256) balances;
    struct Payment {
        uint256 transferAmount;
        address to;
        address from;
    }

    Payment[] payments;

    event totalSupplyChanged(uint256);

    constructor() {
        owner = msg.sender;
        balances[msg.sender] = totalSupply;
    }

    modifier onlyOwner {
        if (msg.sender == owner) {
            _;
        }
    }

    function getTotalSupply() public onlyOwner view returns(uint256) {
        return totalSupply;
    }

    function increaseTotalSupply() public onlyOwner{
        totalSupply += 1000;
        emit totalSupplyChanged(totalSupply);
    }

    function transfer(uint256 amount, address to) public {
        require(balances[msg.sender] > amount, "Insufficient balance");
        balances[msg.sender] = balances[msg.sender] - amount;
        balances[to] = balances[to] + amount;

        payments.push(Payment({transferAmount: amount, to: to, from: msg.sender}));
    }
}