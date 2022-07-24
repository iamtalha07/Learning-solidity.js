// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.15;
contract task1 
{
    
    function add(uint8 val1, uint8 val2) public pure returns(uint8)
    {
        return val1 + val2;
    }

    function sub(uint8 val1, uint8 val2) public pure returns(uint8)
    {
        return val1 - val2;
    }

    function mul(uint8 val1, uint8 val2) public pure returns(uint8)
    {
        return val1 * val2;
    }

    function div(uint8 val1, uint8 val2) public pure returns(uint8)
    {
        return val1 / val2;
    }
}