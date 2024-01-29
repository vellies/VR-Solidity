// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

contract FifthPayableContract {
    function depositeCrypto() public payable {
        require(msg.value >= 100 gwei, "Error -- Check Condition");
    }
}
