// SPDX-License-Identifier: Apache-2.

pragma solidity ^0.8.0;

contract Owned {
    constructor() {
        owner = msg.sender;
    }

    address owner;
}

// Use `is` to derive from another contract. Derived
// contracts can access all non-private members including
// internal functions and state variables. These cannot be
// accessed externally via `this`, though.

contract Child1 is Owned {
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }
    ActionChoices choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    // The keyword `virtual` means that the function can change
    // its behavior in derived classes ("overriding").
    function doThing() virtual public {

    }
}
