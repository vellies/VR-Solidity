// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

contract FirstSolidity {
    uint256 public BankBalance = 50;
    bool OverDraftFlag = true;
    string AccountName = "Vellieswaran R";
    int256 NumberOfTransactions = 10;
    address MetaMaskWallet;
    bytes32 AccountEmail = "vellies@yopmail.com";

    function getBalance(uint256 _Amount) public {
        BankBalance = _Amount;
    }

    // Function Types
    /* 
        Internal, External, Public, View
    */

    function getNewBankBalance() public view returns (uint256) {
        return BankBalance;
    }
}
