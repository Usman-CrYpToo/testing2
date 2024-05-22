// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {PasswordStore} from "../src/Counter.sol";
import {console} from "forge-std/console.sol";

contract PasswordStoreTest is Test {
    PasswordStore public passwordStore;
    address public owner;
  
     function setUp() public {
        passwordStore = new PasswordStore();
        owner = address(this);
    }

    function test_getpassword() public {
        vm.startPrank(owner);
        string memory expectedPassword = "myNewPassword";
        passwordStore.setPassword(expectedPassword);
        string memory actualPassword = passwordStore.getPassword();
        console.log(passwordStore.s_owner());
        console.log(owner);
        assertEq(actualPassword, expectedPassword);
    }

    
}