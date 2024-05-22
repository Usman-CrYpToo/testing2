// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.0;

import "../src/Weth.sol";
import "forge-std/Test.sol";
import "forge-std/StdInvariant.sol";


contract WEth9_Invariant is Test {
     WETH9 public weth;

     function setUp() public {
         weth = new WETH9();
         targetContract(address(weth));
     }

     function testFail_totalsupplyMustBeZero() public {
         assertEq(weth.totalSupply(), 1);
     }

     function invariant_badInvariantTestShouldFail() public {
            assertEq(weth.totalSupply(), 1);
     }

     function invariant_wethSupplyMustBeZero() public {
            assertEq(weth.totalSupply(), 0);
     }

     function test_zeroDeposit() public {
            weth.deposit{value : 0}();
            assertEq(weth.balanceOf(address(this)),0);
            assertEq(weth.totalSupply(), 0);
     }

}