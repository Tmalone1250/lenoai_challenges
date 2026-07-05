// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title LenoToken
 * @dev UNFINISHED ERC-20 Smart Contract for Leno Guild Wargames.
 * 
 * CHALLENGE OBJECTIVES:
 * 1. Complete the constructor to initialize ERC20 with name "Leno Token" and symbol "LNCOIN", 
 *    and mint an initial supply (e.g., 1,000,000 * 10**18) to msg.sender.
 * 2. Fix the `onlyAuthorized` modifier (or use `onlyOwner`) so that only the contract owner can mint!
 * 3. Implement the body of the `burn` function using `_burn(msg.sender, amount)`.
 */
contract LenoToken is ERC20, Ownable {

    // TODO 2: Fix this modifier! Currently, it is left open and allows ANYONE to mint tokens.
    // Restrict access so that only the owner (or authorized deployer) can call functions using this modifier.
    modifier onlyAuthorized() {
        // [INCOMPLETE] Add access control check here (e.g. require(msg.sender == owner(), "Not authorized");)
        _;
    }

    /**
     * @dev TODO 1: Complete the constructor!
     * Pass "Leno Token" and "LNCOIN" to the ERC20 constructor.
     * Mint an initial supply of 1,000,000 tokens (with 18 decimals) to the deployer (msg.sender).
     */
    constructor() ERC20("", "") Ownable(msg.sender) {
        // [INCOMPLETE] Call _mint(...) here:
        // _mint(..., ...);
    }

    /**
     * @dev Mints new tokens to the specified address.
     * VULNERABILITY: Because `onlyAuthorized` is empty, anyone can currently mint unlimited tokens!
     */
    function mint(address to, uint256 amount) external onlyAuthorized {
        _mint(to, amount);
    }

    /**
     * @dev TODO 3: Implement the burn function!
     * Allow users to destroy their own tokens and reduce total supply.
     */
    function burn(uint256 amount) external {
        // [INCOMPLETE] Implement token burning logic here using _burn:
        
    }
}
