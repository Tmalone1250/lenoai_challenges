# Challenge: Minting the Genesis Token

Welcome to your first Web3 challenge! Your task is to complete the deployment and security logic for the `LenoToken` smart contract.

### Your Objectives:
1. Open `contracts/LenoToken.sol`.
2. Fix the **constructor** so the token initializes with the name `Leno Token` and symbol `LNCOIN`.
3. Secure the `mint` function by completing the modifier logic so that **only the contract owner** can mint new supply.
4. Implement the `burn` function body so users can destroy their own tokens.

### How to Submit:
1. Create a new branch on your fork named `challenge/genesis-token`.
2. Run the local tests to ensure everything passes: `npm test` or `forge test`.
3. Commit your changes, push to your branch, and open a Pull Request against the main repository.
