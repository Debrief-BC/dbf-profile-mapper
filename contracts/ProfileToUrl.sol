pragma solidity ^0.5.0;

contract ProfileToUrl {

    mapping (address => string) urls;


    function set_url(string memory url) public{
        urls[msg.sender] = url;
    }
    
    function get_url(address addr) public view returns (string memory) {
        return urls[addr];
    }
}