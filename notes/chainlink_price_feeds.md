## Key Concepts

- DON , Oracle problem , offchain --> Onchain data
- Operators (oracle nodes)
- Consesnsus( agreed to reached the deal) , cryptographic signature.

## Usage

- DeFi platforms , Aave , uniswap
- Atomation(formerly keepers)
- VRF - verifiable Random Function
- Proof Reserve (stable issuer can check backed collateral asset)
- Gaming (winner)
- LINK token used to pay the node operators, they can stake also to have skin in the game to behave honestly.

## Real life examples

1. You want to buy insurance for your flight
2. Smart contract says: "If flight is delayed, pay money back"
3. Flight happens...
4. Chainlink oracle checks the flight status
5. Oracle tells smart contract: "Flight was delayed!"
6. Smart contract automatically sends you money

- All of this happens automatically with no humans needed to approve it!

- Why Multiple Oracles Matter:
- Instead of trusting one person, Chainlink uses MANY oracles:

- Oracle 1 says: "Price is $100"
- Oracle 2 says: "Price is $100"
- Oracle 3 says: "Price is $99"
- Oracle 4 says: "Price is $100"

- They take the average/most common answer, so it's really hard for one bad oracle to lie!

- TL;DR: Blockchains can't see the outside world. Oracles are messengers that bring real-world data to the blockchain. Chainlink is the biggest and most trusted oracle network because it uses MANY messengers who all have to agree, making it super reliable! This lets smart contracts do amazing things like automatic insurance, betting, and much more!

## Chainlink Price Feeds

- Price Feeds empower smart contracts to act on important, real-time data such as asset prices and market data. This is especially true in DeFi applications, where accurate and timely pricing information is critical to providing a trust-minimized and efficient alternative to traditional finance.

## Common Use Cases

- DeFi Protocols: Chainlink Price Feeds are used by various DeFi platforms like Aave and Compound to determine real-time asset prices for lending, borrowing, trading, and other financial services.

- For example, the lending and borrowing platform AAVE uses Data Feeds to help ensure loans are issued at fair market prices and that loans are sufficiently collateralized at all times.

- Stablecoins: Price Feeds help maintain stablecoins' peg by providing accurate market values of assets used to “back” the stablecoin.

- Derivatives and Prediction Markets: Chainlink Price Feeds are used to settle derivatives contracts and provide real-time market data for prediction markets. You will learn more about these later.

### Find Available Chainlink Data Feeds

- Asset prices are presented in asset pairs, as the value of one asset is expressed in relation to another (e.g., 1 USD is worth 0.89 Euro, and so on).

- You can get the pairs and chains where Data Feeds are available at https://data.chain.link/.
- Note that Data Feeds are similar but not the same as Data Streams. Data streams will be covered later on in this course.

### Summary

- An informative overview of Chainlink Price Feeds - Explore how Chainlink Price Feeds deliver secure, real-time asset prices vital for DeFi protocols, stablecoins, and derivatives. Understand their common use cases and how to find available feed contract addresses.
