pragma solidity ^0.4.17;

import "zeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";
import "zeppelin-solidity/contracts/token/ERC20/PausableToken.sol";
import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "./BurnableWithEventToken.sol";


//MintableToken means creator can create and assign them
contract StarDustToken is BurnableWithEventToken, PausableToken, MintableToken {


    string public constant symbol = "Stardust";

    string public constant name = "Timecapule Token";

    uint public constant decimal = 18;

    function burn(uint _value) whenNotPaused public
    {
        super.burn(_value);
    }

}
