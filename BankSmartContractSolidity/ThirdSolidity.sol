// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;
import "./FirstSolidity.sol";

contract ThirdSolidity {
    FirstSolidity[] public FirstSolidityList;

    function createFirstSolidityList() public {
        FirstSolidity InstantFirstSolidity = new FirstSolidity();
        FirstSolidityList.push(InstantFirstSolidity);
    }
}
