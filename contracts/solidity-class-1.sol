// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract task1 
{
    address owner;
    uint8 a;

    constructor() {
    owner = msg.sender;  //msg.sender account that is deploying this contract
    a = 1;
    }

    modifier onlyOwner() 
    {
        require(msg.sender == owner, " Error ");
        _;
    }
    
    //if there is no change in state variable then we use view
    function getA() public view returns(uint8)
    {
        return(a);
    }

    function setA(uint8 _a) public onlyOwner
    {
        a = _a;
    }
}