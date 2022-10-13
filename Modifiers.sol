// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Funds{

constructor(address) {
    owner = msg.sender;
}

// Create a deposit function that allows anybody to send funds.
function deposit(address _address, uint amount) public payable{
    address _address = msg.sender;
mapping(address => amount) public depositAmount;
}

}
