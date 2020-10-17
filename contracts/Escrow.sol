// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract EscrowService { 

    // variables
    uint public value;
    address payable public buyer;
    address payable public seller;

    enum State { Created, Locked, Release, Inactive }

    //state variable whivh has a default value of the first member

    State public state;
}