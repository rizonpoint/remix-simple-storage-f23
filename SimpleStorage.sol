// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating our version

contract SimpleStorage {
    //Basic Types: boolean, uint, int, address, bytes
    uint256 myFavoriteNumber; // FavoriteNumber gets initialized to 0 if no value is given

   // uint [] listOfFavoriteNumbers; 
    //  0.  1.  2. 
    // [77, 78, 90]
   
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array if you add Person[3} it would be a static array
    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavorite;

    // Person public pat = Person({favoriteNumber: 7, name:"Pat"});
    // Person public mariah = Person({favoriteNumber: 16, name:"Mariah"});
    // Person public jon = Person({favoriteNumber: 12, name:"Jon"});


    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }
    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavorite[_name] = _favoriteNumber;
    }
}





