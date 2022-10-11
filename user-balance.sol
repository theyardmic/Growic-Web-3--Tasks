//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

//deposit (uint256 amount) this function accepts one argument and it saves the amount a user is depositing into a mapping,
contract Balance{
function deposit(uint256 amount) public view{
    amount = _amount;
    map(address => uint256) public myMap;
}

function checkBalance(address _address, uint256 _amount) public view returns() {
    return myMap[_address];
}


}




//checkBalance() this function searches for the user balance inside the balance mapping and returns the balance of whoever is calling the contract.
