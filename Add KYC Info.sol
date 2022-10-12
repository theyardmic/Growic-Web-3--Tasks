//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract UserDetails {

struct Details {
    string  name;
    uint256 age;
}

 Details[] public _details;

    //this function accepts 2 arguments that represent the details of the user calling the smart contract and it saves them into a defined struct,
 function setUserDetails(string calldata name, uint256 age) public view {
       string name = _name;
       uint256 age = _age;

        _details.push(Details({name: _name, age: _age}));    
    }

//getUserDetail() this function retrieves and returns the details saved for the user calling the contract.
    function getuserDetail() external view {
        return (_details[]);
    }


}

}
