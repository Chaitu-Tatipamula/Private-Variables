// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Login} from "../src/Login.sol";

contract Access is Test {
    Login public login;

    bytes32 user = "chaitu";
    bytes32 passwd = "somePassword";

    function setUp() public {
        login = new Login(user,passwd);
    }

    function attack() public view {
        bytes32 zeroSlot = (vm.load(address(login), bytes32(uint256(0))));
        bytes32 oneSlot = (vm.load(address(login), bytes32(uint256(1))));
        assertEq(zeroSlot,user);
        assertEq(oneSlot,passwd);

    }
}