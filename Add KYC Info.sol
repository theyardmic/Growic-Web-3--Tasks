//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserDetails {
    struct Details{
     string name;
     uint256 age;
    }

//defined struct
    Details[] public details;

//this function accepts 2 arguments that represent the details of the user calling the smart contract and it saves them into a defined struct,
function setUserDetails(string calldata name, uint256 age) external {
string name = _name;
uint256 age = _age;

 details.push(Details({name: _name, age = _age}));

// todos.push(Todo(_text, false));
 details.push(Details({name: _name, age = _age}));
 //todos.push(Todo({text: _text, completed: false}));

}

}



}
