// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage {
    // This gets initialized  to zero!
    uint256 public favoriteNumber;
    People public person = People({favoriteNumber: 2, name: "Patrick"}); 

    struct People {
        uint256 favoriteNumber;
        string name; 
    }

    //uint256[] public favoriteNumbersList; 
    People[] public people; 

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber; 
    }

    function add() public pure returns (uint256){
        return(1 + 1);  
    }
        

}

//0xd9145CCE52D386f254917e481eB44e9943F39138