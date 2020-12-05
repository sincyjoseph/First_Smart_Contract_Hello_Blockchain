// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.4.25;

contract Hello {
    string greeting;

    constructor() public {
        greeting = "Hello Blockchain World";
    }

    function getGreeting() public view returns(string memory) {
        return greeting;
    }

    function setGreeting(string _greeting) public {
        greeting = _greeting;
    }
}