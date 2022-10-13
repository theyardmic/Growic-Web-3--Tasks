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

//create a modifier that only allows the owner of the contract to withdraw the funds.
    modifier onlyOwner(address) {
        require(msg.sender == owner, "You're not the Owner!");
            _;
    }

//Add a withdraw function and 
    function withdrawFunds() public payable onlyOwner{
        
    }

//Add an addFund function to  accept the amount to be added and update the mapping to have the new balance

// create a modifier that only allows users that have deposited using the deposit function, to increase their balance on the mapping. 
modifier onlyDeposited() {
    require(amount !=0, "You have not deposited funds yet!" );
    _;
}


}
