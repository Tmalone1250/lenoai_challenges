// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../contracts/LenoToken.sol";

contract LenoTokenTest is Test {
    LenoToken public token;
    address public owner = address(1);
    address public user1 = address(2);
    address public attacker = address(3);

    uint256 public constant INITIAL_SUPPLY = 1_000_000 * 10**18;

    function setUp() public {
        vm.startPrank(owner);
        token = new LenoToken();
        vm.stopPrank();
    }

    function test_DeploymentNameAndSymbol() public view {
        assertEq(token.name(), "Leno Token", "Token name must be 'Leno Token'");
        assertEq(token.symbol(), "LNCOIN", "Token symbol must be 'LNCOIN'");
        assertEq(token.totalSupply(), INITIAL_SUPPLY, "Initial supply must be minted to deployer");
        assertEq(token.balanceOf(owner), INITIAL_SUPPLY, "Owner must receive initial supply");
    }

    function test_UserTransfer() public {
        // Ensure owner has initial supply first
        require(token.balanceOf(owner) >= 1000 * 10**18, "Owner needs initial supply to transfer");
        
        vm.prank(owner);
        token.transfer(user1, 500 * 10**18);

        assertEq(token.balanceOf(user1), 500 * 10**18, "User1 should receive transferred tokens");
        assertEq(token.balanceOf(owner), INITIAL_SUPPLY - (500 * 10**18), "Owner balance should decrease");
    }

    function test_RevertWhen_NonOwnerMints() public {
        vm.prank(attacker);
        vm.expectRevert(); // Must revert when attacker tries to mint
        token.mint(attacker, 1000 * 10**18);
    }

    function test_OwnerMint() public {
        vm.prank(owner);
        token.mint(user1, 5000 * 10**18);
        assertEq(token.balanceOf(user1), 5000 * 10**18, "Owner should be able to mint tokens");
    }

    function test_UserBurn() public {
        // Give user1 some tokens first
        vm.prank(owner);
        token.transfer(user1, 1000 * 10**18);

        uint256 initialTotalSupply = token.totalSupply();

        vm.prank(user1);
        token.burn(400 * 10**18);

        assertEq(token.balanceOf(user1), 600 * 10**18, "User balance should decrease after burn");
        assertEq(token.totalSupply(), initialTotalSupply - (400 * 10**18), "Total supply should decrease after burn");
    }
}
