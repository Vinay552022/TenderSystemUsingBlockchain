// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract bTs{
    address payable buyer;
    uint count=0;
    struct Items{
        string[] emails;
        string item;
        string quantity;
        uint p;
    }
    struct Sellers{
        string order;
        string quote;
        uint[] n;
    }
    mapping(uint=>Items) B;
    mapping(string=>Sellers) tender;
    function addSeller(string memory email)public{
            tender[email].order="";
            tender[email].quote="";
            tender[email].n;

    }
    function setItems(string[] memory _emails,string memory _item)public{
        B[count].emails=_emails;
        B[count].item=_item;
        B[count].p=count;
        for(uint i=0;i<_emails.length;i++){
            tender[_emails[i]].n.push(count);
        }
        count++;        
    }
    function getAllItems(string memory mail)public view returns(uint[] memory arr){
        return tender[mail].n;
    }
    function getItem(uint id)public view returns(string memory){
        return B[id].item;
    }
    function setQuote(string memory _quote,string memory id,string memory _email)public{
        id=string.concat("  ",id);
        id=string.concat((id)," ");
        id=string.concat(id,_quote);
        tender[_email].quote=string.concat(tender[_email].quote,id);
    }
    function getQuote(uint id)public view returns(string[] memory,string[] memory){
        uint i;
        string[] memory str=B[id].emails;
        string[] memory q=new string[](B[id].emails.length);
        for(i=0;i<str.length;i++){
           q[i]=(tender[str[i]].quote);
         }
        return (q,B[id].emails);
    }
    // function getQuotes()public view returns(string[] memory){
    //     string[] memory arr;
    //     for(uint i=0;i<count;i++){
    //         arr[i]=B[i].item;
    //     }
    //     return arr;
    // }
     function getQuotes()public view returns(uint){
        return count-1;
    }
}
