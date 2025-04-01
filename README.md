# Deflationary Token

A simple Solidity-based deflationary token with a burn-on-transfer mechanism. Every transaction burns a percentage of the transferred amount, reducing the total supply over time.

## Features
- **Burn on Transfer**: A fixed percentage (2%) of the transferred tokens is burned.
- **Minting**: The owner can mint new tokens.
- **No Imports**: A simple implementation without any external dependencies.

## Smart Contract Overview
This contract includes:
- `mint(address to, uint256 amount)`: Allows the owner to mint new tokens.
- `transfer(address to, uint256 amount)`: Transfers tokens with a 2% burn rate.

## How It Works
1. The owner can mint tokens and assign them to an address.
2. When tokens are transferred, 2% of the transferred amount is burned.
3. The total supply decreases with every transfer.

## Deployment
1. Compile the contract using Solidity 0.8.0 or later.
2. Deploy the contract on a blockchain network.
3. Call the `mint` function to allocate tokens.
4. Use the `transfer` function to send tokens and trigger the burn mechanism.

## License
This project is open-source and available for public use. Modify and use it as needed!
