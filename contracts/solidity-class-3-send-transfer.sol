pragma solidity ^0.8.15;

contract SendMoneyExample { 

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    mapping (address => uint) _balances;

    //msg.value is ether associated with the account
    function recieveMoney() public payable{
        _balances[msg.sender] += msg.value;                  
    }

    function getBalances() public view returns(uint) {
      return  _balances[msg.sender];     
    }

    function withdrawMoney(address payable _payee) public {
        require(msg.sender == owner, "Not allowed");
        require(_balances[_payee] > 0, "Negative Balance");
        uint256 amount = _balances[_payee];
        _payee.transfer(amount);
    }
}





/////////



//SPDX-License-Identifier: Unlicensed
// pragma solidity ^0.8.15;

// contract SendMoneyExample {

//     uint public balanceReceived;

//     function recieveMoney() public payable {
//         balanceReceived += msg.value;
//     }

//     function getBalance() public view returns (uint) {
//         // return address(this).balance;
//         return balanceReceived;
//     }

//     function withdrawMoney() public {
//         address payable to = payable(msg.sender);
//         to.transfer(getBalance());
//     }
// }