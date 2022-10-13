// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Funds {

constructor() {
    address payable owner = msg.sender;

 }

    uint256  amount;
    mapping(address => uint256) public balance;

// Create a deposit function that allows anybody to send funds.
    function deposit(address, uint256) public payable {
        owner.send(amount);
       balance[msg.sender] += amount;

}

//create a modifier that only allows the owner of the contract to withdraw the funds.
    modifier onlyOwner(address) {
        require(msg.sender == owner, "You're not the Owner!");
            _;
    }

//Add a withdraw function with the "onlyOwner" modifier
    function withdrawFunds() public payable onlyOwner(msg.sender){
         owner.transfer(amount);
       balance[msg.sender] -= amount;

    }

// create a modifier that only allows users that have deposited using the deposit function, to increase their balance on the mapping. 
    modifier onlyDeposited() {
    if(amount[msg.sender] != 0) {
        _; 
        }
        else {
           revert("You have not deposited funds yet!");
           }
    }
    
 //Add an addFund function to  accept the amount to be added and update the mapping to have the new balance
    function addFund() public view onlyDeposited {
         owner.send(amount);
         balance[msg.sender] += amount;

    }

 //Create a private constant variable called Fee
      uint256 private constant Fee = 0.01 ether;



//Create a modifier that checks if the value(_amount) it accepts is less than the Fee, revert with a custom error AmountToSmall()
    modifier feePay() {
                       if (msg.value < Fee){
                revert("Amount too small");
            }
        _;
}




}
