// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*
* @title Solidity data types
* @author Sebi de la Mata
* @notice Exhibit solidity datatypes
*/

contract DataTypes {

    // a uint (unsigned int) is a positive-only integer, defaulted to 256 bits
    uint x = 9;
    // integer that can be negative
    int i = -68;
    // stores a positive only int of size 8 bits (uses less gas)
    uint8 j = 17;
    // boolean true or false
    bool isEthereumCool = true;
    // an address of an ethereum wallet
    address owner = msg.sender; // msg.sender is the Ethereum address of the account that sent the transaction
    // byte stores array of any type (can include strings)
    bytes32 bMsg = "hello";
    // string type
    string sMsg = "hello";

    // this function returns our data types (can be called publicly, views local variable (not on blockchain) but doesnt use gas)
    // these type of functions that just return some values to the user are called getter functions
    function getStateVariables() public view returns (uint, int, uint, bool, address, bytes32, string memory) {
        

        // not all languages are like solidity and can return multiple areguments as output
        return(x, i, j, isEthereumCool, owner, bMsg, sMsg);

    }

    // This type of function is referred to as a setter function that takes an input
    // this function is private and can not be invoked from the public world
    // this function can only be called from within this contract
    function setbMsg(bytes32 newValue) private {
        bMsg = newValue;
    }

}
