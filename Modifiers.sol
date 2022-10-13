// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Funds{

constructor() public {
   address owner = msg.sender;
   uint _amount;
   address _address;
   }

// Create a deposit function that allows anybody to send funds.
function deposit(address, uint) public payable {
       mapping(address => uint) _amount;
}

//create a modifier that only allows the owner of the contract to withdraw the funds.
    modifier onlyOwner(address) {
        require(msg.sender == owner, "You're not the Owner!");
            _;
    }

//Add a withdraw function and
    function withdrawFunds() public payable onlyOwner{

    }

// create a modifier that only allows users that have deposited using the deposit function, to increase their balance on the mapping. 
modifier onlyDeposited() {
    if (_amount == 0) {
        revert("You have not deposited funds yet!");
    }
       _;
}

//Add an addFund function to  accept the amount to be added and update the mapping to have the new balance
    function addFund() public view onlyDeposited {
        amount[_address] =  _amount[_address] + amount;

    }




}
