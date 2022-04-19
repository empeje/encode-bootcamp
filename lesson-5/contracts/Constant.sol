// SPDX-License-Identifier: Apache

pragma solidity ^0.8.0;

// define a constant a file level
uint constant X = 32 ** 22 + 8;

interface DataFeed {
    function getData(address token) external returns (uint value);
}

contract C {
    string constant TEXT = "abc";
    bytes32 constant MY_HASH = keccak256("abc");
    uint256 immutable decimals;
    uint256 immutable maxBalance;
    address immutable owner = msg.sender;

    constructor(uint256 _decimals, address _reference) {
        decimals = _decimals;
        // Assignments to immutables can even access the environment.
        maxBalance = _reference.balance;
    }

    function greaterThanThousand(uint _amount) public pure {
        assert(_amount > 0);
        require(_amount > 0, "Amount must be > 0");
    }
}
