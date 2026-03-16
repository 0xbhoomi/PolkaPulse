# PolkaPulse – The Vibe Check for DeFi! 

**Winner of $3,000+ EVM Track? (Hopefully!) 
Built for the **Polkadot Solidity Hackathon 2026**.

##  What is PolkaPulse?
PolkaPulse is a fun, easy-to-use dashboard that helps users find the best stablecoin yields across the Polkadot ecosystem. It uses a "vibe-based" analysis (simulated AI sentiment) to categorize parachains like Hydration, Moonbeam, and Astar into "Hot", "Neutral", or "Cold" zones.

Once a user finds a "Hot" vibe, they can **"Ride the Pulse"**—which triggers a mock XCM bridge transaction to move their stablecoins to that chain to chase the highest yields!

##  Key Features
- **AI Sentiment Monitoring**: Uses an internal vibe-check logic to score chains 0-100.
- **Dynamic UI**: No emojis (as per final design spec!), clean blue professional theme.
- **One-Click Bridge**: Simple "Ride the Pulse" button for cross-chain moves.
- **EVM Compatible**: Built with Solidity for Polkadot Hub.

##  Tech Stack
- **Smart Contract**: Solidity 0.8.19 (Mock XCM Logic).
- **Frontend**: Vanilla JavaScript + Vite.
- **Blockchain Interaction**: Ethers.js (v5.7.2).
- **Styling**: Pure Vanilla CSS.

##  Project Structure
- `/contracts`: The PolkaPulse smart contract.
- `/`: Frontend code including `app.js`, `index.html`, and `style.css`.
- `README.md`: This file!

##  How to Run Locally
1. Clone the repo.
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the dev server:
   ```bash
   npm run dev
   ```

##  Developer Notes (Bhoomi's Thoughts)
- "I learned how to use `ethers.providers.Web3Provider` from the docs for this project!"
- "The XCM logic is currently mocked with events because cross-chain is hard, but it shows the intent perfectly for the hackathon judges."
- "Had to fix a bug where any user could mint unlimited USDC... but it's a testnet mock so it's fine for now! 😅"

---
Built by Bhoomi Vashishtha (0xbhoomi)
