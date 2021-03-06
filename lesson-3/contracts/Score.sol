// SPDX-License-Identifier: Apache-2.0

pragma solidity ^0.8.0;

struct Funder {
    address addr;
    uint amount;
}

contract Score {
    uint public score = 5;
    address owner;
    mapping (address => uint) public score_list;
    uint my_score = score_list[owner];
    Funder giver;


    event newScoreEvent(uint indexed);

    constructor() {
        owner = msg.sender;
        giver.addr = address (0xBA7283457B0A138890F21DE2ebCF1AfB9186A2EF);
        giver.amount = 2500;
    }

    modifier onlyOwner {
        if (msg.sender == owner) {
            _;
        }
    }

    modifier Fee(uint fee) {
        if (msg.value >= fee) {
            _;
        }
    }

    function getScore() public view returns (uint) {
        return score;
    }

    function forceSetScore(uint new_score) public payable Fee(100000) {
        score = new_score;
        emit newScoreEvent(score);
    }

    function setScore(uint new_score) public onlyOwner {
        score = new_score;
    }

    function getUserScore(address user) public view returns(uint) {
        return score_list[user];
    }
}