// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract bTs{
    string s;
    string quote;
    function order(string memory _s)public{
        s=_s;
    }
    function get()public view returns(string memory){
        return s;
    }
    function set(string memory _quote)public{
        quote=_quote;
    }
    function getq()public view returns(string memory){
        return quote;
    }
}