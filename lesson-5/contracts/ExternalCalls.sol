// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/Math.sol";

contract InfoFeed {
    uint256 price;

    function info() public view returns (uint256 ret_) {
        return price;
    }

    // other functions
}

contract Consumer {
    InfoFeed feed;

    constructor(InfoFeed _feed) {
        feed = _feed;
    }

    function callFeed() public view returns (uint256) {
        return feed.info();
    }
}

contract Test {
    using Math for uint256;

    function bigger(uint256 _a, uint256 _b) public pure returns (uint256) {
        uint256 big = _a.max(_b);
        return big;
    }
}