# Stage 1: Mission Instructions // Minting the Genesis Token

Welcome to your first Web3 challenge in the Leno AI ecosystem! Your task is to complete the deployment and security logic for the `LenoToken` smart contract.

## 🎯 Your Objectives

Open the workspace in your code editor and fix the broken logic in the smart contract:

1. **Open `contracts/LenoToken.sol`.**
2. **Fix the constructor** so the token initializes with the name `Leno Token` and symbol `LNCOIN`.
   - Ensure you mint an initial token supply (e.g., `1000000 * 10**18`) to the deployer (`msg.sender`).
3. **Secure the `mint` function** by completing the modifier logic so that only the contract owner can mint new supply.
   - Restrict access so unauthorized callers cannot mint tokens.
4. **Implement the `burn` function body** so users can destroy their own tokens.
   - Use OpenZeppelin's internal `_burn(msg.sender, amount)`.

## 🚨 Security & Grading Rules

- **Do NOT modify restricted files**: Modifying `.reviewer_rubric.md` or any test files (e.g., `test/LenoToken.t.sol`) will trigger an automated security violation and result in an immediate automatic PR rejection.
- **Local Grading Rubric**: Run `forge test` in your terminal at any time to check your progress against the rubric!
