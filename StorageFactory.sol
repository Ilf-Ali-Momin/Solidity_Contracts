// SPDX-License-Identifier:MIT

pragma solidity ^0.8.25;

import{SimpleStorage}from"./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContract;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract= new SimpleStorage();
        listOfSimpleStorageContract.push(newSimpleStorageContract);
}
function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber)public {
    //Address
    // ABI - Application Binary Interface

    SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
    mySimpleStorage.store(_newSimpleStorageNumber);

}
    function sfGet(uint256 _simpleStorageIndex)public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }

}
