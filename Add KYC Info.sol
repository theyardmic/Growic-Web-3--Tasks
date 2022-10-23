//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract UserDetails {
        //previous task of mapping
    constructor(address) public {
accountOwner = msg.sender;

}

//mapping declaration
   mapping(address => uint256) public balance;
   
    //deposit (uint256 amount) this function accepts one argument and it saves the amount a user is depositing into a mapping,
function deposit(uint256 amount) public payable {
 uint256 amount = msg.value;
 balance[msg.sender += amount];
 
}

    //checkBalance() this function searches for the user balance inside the balance mapping and returns the balance of whoever is calling the contract.
function checkBalance() public external returns(uint256) {
    uint256 userBalance = balance[msg.sender];
    return userBalance;
}


}

struct Details {
    string  name;
    uint256 age;
}

 Details[] public _details;

    //this function accepts 2 arguments that represent the details of the user calling the smart contract and it saves them into a defined struct,
 function setUserDetails(string calldata name, uint256 age) public view {
             _details.push(Details({name: _name, age: _age}));    
    }

//getUserDetail() this function retrieves and returns the details saved for the user calling the contract.
    function getuserDetail() external view {
        return (_details[]);
    }


}

}
