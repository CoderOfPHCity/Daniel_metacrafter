MyToken Solidity Contract
Overview
This Solidity contract, named MyToken, is a basic implementation showcasing fundamental functionalities for managing a token on the Ethereum blockchain. The contract includes features such as token minting, burning, and balance tracking.

Features
Token Information:

tokenName and tokenAbbrv: Public variables storing the name and abbreviation of the token.
totalSupply: Public variable representing the total supply of the token.
Balances:

balances: A mapping of Ethereum addresses to their respective token balances.
Constructor:

The constructor initializes the contract, setting the deployer's address as the initial holder of the total supply.
Mint Function:

mint(address account, uint256 value): Allows minting new tokens by specifying an address and the corresponding value. Increases the total supply and the balance of the specified address.
Burn Function:

burn(address account, uint256 value): Permits burning tokens by specifying an address and the amount to be burned. Decreases the total supply and the balance of the specified address. Includes conditional checks to ensure a sufficient balance.
Getting Started
To interact with this contract:

Use Remix, an online Solidity IDE, at https://remix.ethereum.org/.
Create a new file and save it with a .sol extension.
Copy and paste the provided MyToken contract code.
Compile the code using the "Solidity Compiler" tab.
Deploy the contract in the "Deploy & Run Transactions" tab.
Example Usage
solidity
Copy code
// Deploy the contract
MyToken myToken = new MyToken();

// Mint new tokens
myToken.mint(addressToMint, amountToMint);

// Burn tokens
myToken.burn(addressToBurn, amountToBurn);
Authors
Daniel agantem
@mcoderofphcity
License
This project is licensed under the MIT License - see the LICENSE.md file for details.