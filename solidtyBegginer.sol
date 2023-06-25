// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public tokenName="Meta";
    string public tokenAbbrv="MTA";
    uint public totalSupply=0;
    // mapping variable here
    mapping (address=>uint) public balances;

    // mint function    
    function mint(address add,uint val) public  {
        totalSupply+=val;
        balances[add]+=val;
    }
    // burn function
    function burn(address add,uint val) public  {
        if (balances[add]>=val){     
        totalSupply-=val;
        balances[add]-=val;}
    }
}
