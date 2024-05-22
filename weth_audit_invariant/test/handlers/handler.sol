// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0;

import "../../src/Weth.sol";
import {CommonBase} from "forge-std/Base.sol";
import {StdCheats} from "forge-std/StdCheats.sol";
import {StdUtils} from "forge-std/StdUtils.sol";



contract Handler is CommonBase, StdCheats, StdUtils{
     WETH9 public weth;

     function setUp() public { 
         
            weth = new WETH9();
            
     }

     function deposit(uint256 wad) public {
          
            weth.deposit{value : wad}();
     }
}