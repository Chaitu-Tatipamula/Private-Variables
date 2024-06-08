// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Login {
   
    // Slot 0
    bytes32 private user;
    // Slot 1
    bytes32 private passwd;

    constructor(bytes32 _username, bytes32 _password) {
        user = _username;
        passwd = _password;
    }
}