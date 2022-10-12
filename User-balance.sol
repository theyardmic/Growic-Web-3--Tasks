//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Balance {

constructor() public {
address accountOwner = msg.sender;
}

    //deposit (uint256 amount) this function accepts one argument and it saves the amount a user is depositing into a mapping,
function deposit(uint256 amount) public view {
    uint256 amount = _amount;
    mapping(address => uint256) public userBalance;
}

//checkBalance() this function searches for the user balance inside the balance mapping and returns the balance of whoever is calling the contract.
function checkBalance(address _address, uint256 _amount) public view returns(address, uint256) {
    return UserBalance[accountOwner];
}


}





