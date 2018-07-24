pragma solidity ^0.4.;

contract FoodSafe {

    struct Location {
        string Name;
        uint LocationID;
        uint PreviousLocation;
        uint mouth;
        uint TimeStamp;
        string Secret;

    }

    event (address bidder, uint amount);


}
