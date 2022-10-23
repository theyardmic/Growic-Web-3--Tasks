//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Balance {

    constructor(address) public {
accountOwner = msg.sender;

}

//mapping declaration
   mapping(address => uint256) public balance;
   
    //deposit (uint256 amount) this function accepts one argument and it saves the amount a user is depositing into a mapping,
function deposit(uint256 amount) public payable {
  balance[msg.sender += amount];
 
}

    //checkBalance() this function searches for the user balance inside the balance mapping and returns the balance of whoever is calling the contract.
function checkBalance() public external returns(uint256) {
    uint256 userBalance = balance[msg.sender];
    return userBalance;
}


}




