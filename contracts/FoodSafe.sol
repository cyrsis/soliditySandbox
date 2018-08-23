pragma solidity ^0.4.17;


contract FoodSafe {


    struct Location {

        string Name;
        uint256 LocationId;
        uint256 PreviousLocationId;
        uint256 TimeStamp; // this is the blockchain time when it is mine
        string Secret;

    }

    mapping(uint256 => Location) Trail;
    uint8 TrailCount = 0;

    function AddNewLocation(uint256 LocationID, string Name, string Secret) public
    {
        Location memory newLocation;
        newLocation.Name = Name;
        newLocation.LocationId = LocationID;
        newLocation.Secret = Secret;
        newLocation.TimeStamp = now;

        if (TrailCount != 0)
        {
            newLocation.PreviousLocationId = Trail[TrailCount].LocationId;
        }

        Trail[TrailCount] = newLocation;
        TrailCount++;

    }

    function getTrailsCount() public view returns (uint8) {
        return TrailCount;
    }

    function getLocation(uint8 TrailsNo) public view returns (string, uint256, uint256, uint256, string) {
        return (Trail[TrailsNo].Name, Trail[TrailsNo].LocationId, Trail[TrailsNo].PreviousLocationId, Trail[TrailsNo].TimeStamp, Trail[TrailsNo].Secret);
    }


}
