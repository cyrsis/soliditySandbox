pragma solidity 0.4.24;

contract FoodSafe {

    struct Location {
        string Name;
        uint LocationID;
        uint PreviousLocation;
        uint mouth;
        uint TimeStamp;
        string Secret;

    }

    event happy(address bidder, uint amount);


}
