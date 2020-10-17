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

    //modifier to check the current state
    modifier inState(State _state) {
        require(state == _state);
        _;
    }

    //modifier to check that the function caller is the buyer
    modifier onlyBuyer() {
        require(msg.sender == buyer);
        _;
    }

    //modifier to check that the function caller is the seller
    modifier onlySeller() {
        require(msg.sender == seller);
        _;
    }
    

}