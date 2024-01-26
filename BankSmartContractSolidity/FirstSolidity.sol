// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

contract FirstSolidity {
    // Storage Variables --> That can modified
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

    // Struct & Arrays
    // Struct is have multiple datatypes.
    struct Transaction {
        string FromName;
        uint256 Amount;
    }

    Transaction public TransactionStruct =
        Transaction({FromName: "Vellies", Amount: 25});
    Transaction TransactionStruct1 =
        Transaction({FromName: "Ramani", Amount: 50});
    Transaction TransactionStruct2 = Transaction({FromName: "VR", Amount: 100});

    Transaction[] public TransactionList;

    // Storage Functions - 3 Types
    // Call data, Memory, Storage (calldata,memory,storage)
    // calldata --> Temp Variable, can't change it.
    // memory --> Temp Variable, can change.
    // storage --> Default and permanent variable.
    function addTransaction(string memory _fromName, uint256 _amount) public {
        TransactionList.push(Transaction(_fromName, _amount));
    }
}
