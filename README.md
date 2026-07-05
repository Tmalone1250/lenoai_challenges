# Stage 1: Minting the Genesis Token

Welcome to your first Web3 challenge in the Leno AI ecosystem! Your task is to complete the deployment and security logic for the `LenoToken` smart contract. Earning this passing grade will trigger the webhook to stamp your passport in the portal.

> [!IMPORTANT]
> **Before you begin coding**, please read `INSTRUCTIONS.md` for your exact mission objectives and smart contract specifications!

## 🛠️ Step 1: Environment Setup

Before you can write code, you need to set up your local workspace. Ensure you have [Foundry](https://book.getfoundry.sh/getting-started/installation) installed on your machine.

1. **Fork this repository** to your own GitHub account using the "Fork" button at the top right of this page.
2. **Clone your fork locally.** Because this repository uses submodules for its dependencies, you **must** use the `--recursive` flag:
   ```bash
   git clone --recursive https://github.com/YOUR_USERNAME/lenoai_challenges.git
   ```
3. **Navigate into the repository directory:**
   ```bash
   cd lenoai_challenges
   ```
4. **Create a new branch named `challenge/genesis-token`:**
   ```bash
   git checkout -b challenge/genesis-token
   ```

## 📖 Step 2: Read Your Mission Instructions

Open `INSTRUCTIONS.md` (located in this directory) to view your specific coding objectives, contract requirements, and security rules.

## 🧪 Step 3: Local Validation

Before submitting, you need to ensure your code works. We have provided a test suite that acts as your grading rubric.

Run the local tests to ensure everything passes by executing the following command in your terminal:
```bash
forge test
```
If your logic is correct, you will see green checkmarks for all tests. If a test fails, read the error output to see which objective you missed!

## 🚀 Step 4: Submit Your Work

Once all tests are passing, it is time to submit your challenge to the network.

1. **Stage and commit your changes:**
   ```bash
   git add .
   git commit -m "feat: completed genesis token logic"
   ```
2. **Push the branch to your forked repository:**
   ```bash
   git push origin challenge/genesis-token
   ```
3. **Head back to GitHub and open a Pull Request against the main repository.**

Our automated pipeline will evaluate your PR. If it passes, your passport will be stamped, unlocking the next stage!
