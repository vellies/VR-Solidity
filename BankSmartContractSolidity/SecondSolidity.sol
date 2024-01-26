// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;
import "./FirstSolidity.sol";

// Across Contract 3 steps are
/*
import, variable, function
*/
contract SecondSolidity {
    FirstSolidity public InstantFirstSolidity;

    function createFirstSolidity() public {
        InstantFirstSolidity = new FirstSolidity();
    }
}
