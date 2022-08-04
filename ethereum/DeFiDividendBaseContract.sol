// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract DeFiDividendBaseContract {
    mapping(address => uint) stakedDate;
    mapping(address => uint) stakedAmount;
    uint dividendRate = 10;

    function getStakedDate(address _address) public view returns (uint) {
        return stakedDate[_address];
    }

    function setStakedDate(address _address) public {
        stakedDate[_address] = block.timestamp;
    }

    function getStakedAmount(address _address) public view returns (uint) {
        return stakedAmount[_address];
    }
}
