// SPDX-License-Identifier: Apache

pragma solidity ^0.8.0;

contract ListExample {
    struct DataStruct {
        address userAddress;
        uint userID;
    }

    DataStruct[] public records;

    function createRecord1(address _userAddress, uint _userID) pure public {
        DataStruct memory newRecord;
        newRecord.userAddress = _userAddress;
        newRecord.userID =_userID;
    }

    function createRecord2(address _userAddress, uint _userID) public {
        records.push(DataStruct({userAddress: _userAddress, userID: _userID}));
    }

    function getRecordCount() public view returns(uint recordCount) {
        return records.length;
    }
}