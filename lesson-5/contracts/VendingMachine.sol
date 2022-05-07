// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract VendingMachine {
    address owner;

    error Unauthorized();

    // Insufficient balance for transfer. Needed `required` but only
    // `available` available
    // @param available balance available
    // @param required requested amount to transfer
    error InsufficientBalance(uint256 available, uint256 required);

    function buy(uint amount) public payable {
        if (amount > msg.value / 2 ether)
            revert("Not enough Ether provided.");

        // Alternative way to do it
        require(
            amount <= msg.value / 2 ether,
            "Not enough Ether provided."
        );

        // other alternative, just to demonstrate, weird logic istended
        if (amount > address(this).balance)
            revert InsufficientBalance({ available: address(this).balance, required: amount });

        // Perform the purchase here.
    }

    function withdraw() public {
        if (msg.sender != owner)
            revert Unauthorized();

        payable(msg.sender).transfer(address(this).balance);
    }

}