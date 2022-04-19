// SPDX-License-Identifier: Apache

pragma solidity ^0.8.0;

contract Test {
    function memoryTest(string memory _exampleString) public pure returns(string memory){
        _exampleString = "example"; // You can modify memory
        string memory newString = _exampleString;
        // You can use memory within a function's logic
        return newString; // You can return memory
    }

    function calldataTest(string calldata _exampleString) external pure returns (string calldata) {
        // can not modify _exampleString
        // but can return it
        return _exampleString;
    }
}