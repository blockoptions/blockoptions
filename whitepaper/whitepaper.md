BlockOptions

1st Decentralized Binary Options Platform Powered By Ethereum Blockchain

Gary Luo
Draft by Gary July the 10th 2017
https://blockoptions.io










Abstract.
The Binary Options Industry(BIO) is a multi-billion dollar market, just in Israel, binary options broker companies made $5 billion profit in 2016[1]. 

When you buy a binary option from centralized brokers, you actually bet against the platform, the broker makes money when you lose. This means that the broker must make 

sure it wins more than it loses[2], traders are playing an unfair game as broker/platform can cheat you by manipulating the price feed in their favor and block traders from withdrawing. So you may win the trade but lost your money.

BlockOptions.io aim to build a independent and decentralized platform for binary options industry.
a) Pure P2P market -  Traders bet against Bankrollers, BlockOptions.io makes profit by trade fee, not by profit share as traditional platform
b) Guaranteed Payout - Payments are issued by smart contract direct to your ETH address, no one can block withdraws
c) 100% Transparency and Provably Fair by getting assets price on blockchain, cheating on manipulating price feed impossible 
We will show you how we build this 100% on-chain system, as we believe the foundations on ethereum blockchain are solid and can make a high user friendly Dapp based on it.

1. Introduction
BlockOptions.io is the first independent and decentralized Binary Options Platform on Ethereum blockchain for Binary Options Industry. We do not bet against traders but provide a larger catalog of assets marketplace by letting bankrollers creating varied asset contracts themselves on our platform, e.g. 70 seconds EUR/USD, 3 minutes BTC/USD, 8 hours GOLD, etc..

Blockoption.io platform end goals
To remove trust and all it's consequences in all domain of Binary Option trading and also making it better. Hence..

Reduce operational costs of binary trading options industry therefore provide higher payouts

Reduce a risk of fraud

Do away with some unpleasant boundaries in the tradition binary option industries like. min withdrawal,max withdrawal,min deposit,min trade time,max deposit,withdrawal null time,number of withdrawal per some amount of time, etc...

Remove the need and responsibility from binary option companies to maintain traders account balances

Enable an open ecosystem of provably fair inter operable on-line binary option industries

Integrate a system of replicable templates and incentivised audit to allow bankroller not familiar with Solidity to benefit from a new value transfer paradigm that Ethereum offers.

1.1 Binary Options Industry
Binary options "are based on a simple 'yes' or 'no' proposition: Will an underlying asset be above a certain price at a certain time?[3] And binary options are often considered a form of gambling rather than investment because of their negative cumulative payout (the brokers have an edge over the investor) and because they require 

little or no knowledge of the markets. And "this sort of thing can quickly become addictive... no one, no matter how knowledgeable, can consistently predict what a stock or commodity will do within a short time frame."[4]

The biggest Binary options platform in United States made almost 1M profit per day. IG Group, One of the top company made $305.1 million of net trading revenue in 2016.[5].

Binary options seems to have more funs compare to dice game, and there is no leading blockchain binary options platform running right now. BlockOptions.io will have big potential to be the No.1 blockchain binary options platform on market.

1.2. Common Issues in Binary Options Industry
Some of the existing issues in the market of binary options that lockOptions.io can solve:

Funding problem to your account - In BlockOptions.io you are trading with your ether wallet, no need to wait for any broker to help credit your account.

Price data feed manipulating - only a tiny changes can influence the result of trade. By using BlockOptions.io no one can change the price data as it's fetching by smart contract and stored in blockchain.

Delay or block withdraw - When a binary options broker delay or block your withdraw, you can't do anything about it. By using BlockOptions.io you will be rewarded direct to your ETH address by smart contract automatically and immediately.

Not safe funds -  "On non-regulated platforms, client money is not necessarily kept in a trust account, as required by government financial regulation, and transactions are 

not monitored by third parties in order to ensure fair play."[6] By using BlockOptions.io, every transaction and bankroll funds are viewable on ethereum blockchain. Traders will get guaranteed payout if they win.

Not provably fair game - Traders bet against brokers/platform in traditional platform, it can't be provably fair even if it's a regulation platform. Traders bet against bankrollers in BlockOptions.io and win rates and rewards rate are 100% transparent and unchangeable.

Company shut down or run away - Traders will lost all their money if broker company shut down or run away. It's the worst situation many traders face. By using BlockOptions.io all funds are safe even the BlockOptions.io platform can't be access as all funds is stored on ethereum blockchain. 

Server or account hacked - In BlockOptions.io all your trades and funds are safer than traditional platform as it's impossible to hack the ethereum blockchain.

1.3 The following table compares typical binaty options broker and BlockOptions.io platform.


Typical Brokers
BlockOptions.io
Transparency
Very Little
100% Transparency
Manipulable
Uncertain
Can't
Guaranteed Payout
Uncertain
Yes
Fund Safety
Uncertain
Yes
Provably Fair
Uncertain
Yes
Platform Safe
Uncertain
Safe

2. BlockOptions.io Platform
Built 100% onchain, BlockOptions.io fetch asset price data from an oracle by using Orcalize service running on smart contract. We will use a build-in wallet to fetch start time price and pass it to smart contract, compare the start time price, expiry price and reward winning traders immediately by smart contract. No additional database and server-side needed. Not even the slightest window for cheating and scams. No delay payments and deny payments. Although we will simplify this on MVP version, but it will be implemented eventually.

OPT - BlockOptions.io internal token - is used as dividend (100% of the profit generating by BlockOptions.io platform goes to token holders as dividend) and as second in-game currency. OPT token is a standard Ethereum ERC20 token.

We will release a MVP in July 2017 and publish further development plans according to the road-map after ICO.
2.1 How it works?

2.1 Roles
2.1.1 Platform
BlockOptions.io Platform didn't make money from traders loss but by fees per trade (planning charge 0.005-0.01 ETH per trade, actual fee per trade will be published before public version released), we aim to provide the best binary options platform on the market by providing a provably fair, guaranteed Payout, 100% transparency, highest reward rate and best user friendly system to traders, obtaining more daily trade volume to make more profit.

2.1.2 Quote provider
2.1.2.1 MVP version: Uses cryptocompare.com as quote provider. “At CryptoCompare we pride ourselves in showing the most accurate live prices, charting and market analysis from 37 of the top crypto exchanges globally. Our content editors keep the mining data, be it company, mining equipment or mining contracts up to date with the latest pricing and products available on the market. ” [7]
2.1.2.2 Later versions: Use xignite as quote provider. Xignite provides very high quality quotes to many different banks and platforms.
“Xignite, pronounced ex-ig-nite,  stands for Igniting Exchanges. We have sparked a FinTech revolution, the first to coin that term way back in 2014, and today we are fueling the digital transformation of financial services.” [8]
BlockOptions.io will provide more than 30+ Assets
BTC/USD
BTC/CNY
ETH/BTC
ETH/USD
ETH/CNY

EUR/USD
GBP/USD
CAD/USD
USD/JPY
USD/CNY

GOLD
OIL
Silver

NASDAQ
S&P500
etc..


2.1.3 Ethereum Blockchain
BlockOptions.io’s token contract and trading contracts will be deployed on Ethereum blockchain. Trader and Bankroller’s funds are  also stored on ethereum blockchain.


2.1.4 Oracle
In a nutshell, an oracle is something (or someone) that provides data to blockchain applications that these applications cannot (efficiently) access by themselves.

Oracles are necessary because it is inefficient and often impossible to reach a decentralized consensus on centralized data. [9]
2.1.5 Trade Smart Contract
Asset’s start time price, expiry price stored in smart contract and rewards also issued by smart contract on ethereum blockchain.
2.1.6 Traders
Traders send ETH or OPT directly to asset’s smart contract to trade, and get reward by smart contract automatically.
2.1.7 Bankrollers
Bankrollers send ETH or OPT to create an asset contract or back existent contracts and make profit from bankrolling. Profits issued by smart contract.
2.1.8 Affiliates
Affiliates send new traders to BlockOptions.io Platform and get paid with ETH from affiliate smart contract.


2.2 Token
Token for BlockOptions.io named OPT, OPT used to dividend profits generated by BlockOptions.io and also used second in-game currency on BlockOptions.io.

2.2.1 Tokensales
20,000,000 Blockoptions Tokens[OPTS] will be created as Ethereum ERC20 tokens and issued during the tokensale. 
No min. cap.
Blockoptions Tokens can be purchased with Ethereum only. All funds will be held in cold storage.

2.2.2 Token distribution
18 million will be available for sale to tokensale participants. No sold tokens will be burned.
1.5 million will be retained by Blockoptions for advisors, partners, hiring, future marketing and development with 2 years vesting, unlock 25% per 6 months.
0.5 million will be for ICO bounties and dev. reward without vesting

Early Discounts
1st week 17%
2nd week 10%
3-4th week no discount
Pre-sale
You can purchase tokens with a 29% discount in our pre-sale up until the 31th of July 12am UTC.
The pre-sale has a cap of 7142 ETH. Email: support@blockoptions.io if you would like to participate.


Tokens
Token  Price
Time
Hard Cap
20M


Pre-ICO
1M
140:1 ETH
One Week




ICO
17M
120:1 ETH
First Week


110:1 ETH
Second Week


100:1 ETH
Last 2 Weeks




Platform Reserve
1.5M, 2 years vesting


Dev. Team Reward
0.25M


Bounties
0.25M



2.2.1.2 ICO Time:
PRE-ICO: 24-31, July, 2017
ICO: 15, Aug. 2017 - 15, Sep. 2017
2). ICO Fund usage:
80% of the funds raised will be used for futher development and marketing. The remaining funds will be used for legal and other costs.
Dev.             40%
Marketing        40%
Legel and others  20%

2.2.2 Profit Distribution
BlockOptions.io Platform didn't make money from traders loss but by fee per trade (planning charge 0.005-0.01 ETH per trade, actual fee per trade will be published before 
public version released), and 100% of the profit will be dividented to token holders via token reward smart contract.

2.2.3 As in-trade currency
OPT also a second in-trade currency besides ETH, it will add value to token and raise price by high market demand.

2.3 Roadmap
2.3.1 July - Aug.2017
Release MVP and Pre-ICO start.
2.3.2. Sep. 2017
Release build-in wallet version and add asset contract creation function for bankroller. 
Token dividend contract and affiliate contract completed.
ICO continue.

2.3.3. Q4, 2017
2.3.3.1 Accept fiat money and btc/other crypto currencies to trade by using coinbase and shapeshift.io service.

2.3.3.2 Build app to attract mobile traders, this will increase our user base up to at least 200%

2.3.3.3 Multiple language supported and expand more offices to more regions

2.3.4 Public released on Dec. 2017 and more marketing budget and PR, we aid to build the No.1 blockchain binary option brand.

3. How we achieve the 100% onchain platform
To achieve the 100% onchain platform, BlockOptions.io won’t need account registration, off-chain server side, additional database, man power to audit funding/trading/withdrawing, but only reply on ethereum blockchain.

3.1 How the traditional binary options brokers works
The traditional binary options platform also known as the only brokers trade against traders. Traders register/login to system, funding with fiat money via credit card/PayPal/Wire transfer to broker’s account, get account credited after broker’s auditing. Trading and rewarding by broker’s server side, the price feed also provided by broker’s server side. And how much and when get your withdraw also processed by brokers. It can’t be a provably fair game as brokers makes money while traders lost.


3.1.1 Traditional binary option sites using Bitcoin
Some sites claim to be blockchain binary options platform, whereas they only provide trading and withdraw with bitcoin, such as satoshioption.com, secondstrade.com and other sites you can google them with phrase: ”blockchain bianry options”. Their trading are still running based on server site informations, and the withdraw part mostly need to be manually approved. They still belong to Traditional platforms category just using the fashionable bitcoin payment method.

There are  so many problems with these types of companies and so many scams, so the binary options industry is in critical state where risk and trust problems are the oder of the day, many countries have banned it or limited it.[10]

So we are going to rebuild the binary option industry with blockchain technology following this steps in the list below:

3.2 First 100% on onchain binary options platform 
3.2.1 Fetch data from reliable quote provider
We will use smart contract service oraclize.it to fetch price from quote provider’s API to insure that the price data is accurate and can not be changed. 
3.2.2 MVP without build-in wallet
Traders send ETH/OPT direct from 3rd wallet, e.g. MEW to trading smart contract, at the same time trading smart contract sending a transaction to Oraclize’s smart contract. After some blocks time, 30 seconds – 1 min. Oraclize’s smart contract bring back start price. 

And we also schedule a callback in the transaction Oraclize’s smart contract, let us get the expiry price in e.g 2 minutes later.

In 2 minutes + a few block time later, Oraclize callback trading smart contract with expiry price, traders get e.g. 175% of trading amount as reward by trading smart contract if win or 1 gwei if lost. 


3.2.3 The UI of MVP:


The MVP will be release online for test, test address https://blockoptions.io/demo (will be online soon)
Although the MVP is a 100% onchain system, with auto reward, 100% transparent, can’t be manipulated, guaranteed payout and provably fair, but it have some weak points need to improve urgently.
a. The start price will be delayed in 1min. 
b. Traders have to open ETH wallet to send ETH to smart contract, not very user friendly
c. Expiry price is not exactly e.g 2 Min. later price, the perdition is not traders wanted.

3.3 Build-in wallet version on public chain
So a building wallet version is needed. It will fix the start price delay, expiry price not accurate and can’t accept BTC to trade, etc problems.

Traders create a online wallet on BlockOptions.io or import their private key to BlockOptions.io as other online wallets like https://www.myetherwallet.com/.

Traders click invest button to start trading on BlockOptions.io, Build-in wallet will fetch start price within the same second from xignite API and bring it to ethereum blockchain.

At the same time sending a schedule callback to Oraclize’s smart contract, e.g callback with exactly 2 min. later price using timestamp parameter for xignite API. This will get back the expiry price exact equal (start time + 2 minutes)’s price from ethereum blockchain.

In 2 minutes + a few block time later, Oraclize callback trading smart contract with expiry price, traders get e.g. 175% of trading amount as reward by trading smart contract if win or 1 gwei if lost. 


The UI of build-in wallet version will be similar to this, with one click traders can start a trade on site, no need to open 3rd wallet.


This version fixes the start time delay and expiry time not accurate problem plus all advantages MVP had. But still have a shortage: need to pay too many TX fee to ethereum blockchain miners (needs to pay 3 times TX fee for a trade, it will raise as price of ETH will  rise in future and it is about $1 per TX fee at the price of $300 per ETH).

3.4 Build a less TX fee platform
In this version we would like to achieve a less TX fee but still 100% onchain platform for binary options industry. We will bring in private chain + public chain structure.

Traders create a new wallet or import private key to BlockOptions.io and traders confirm how many ETH they would like used to trade, BlockOptions.io will transfer the fund from public chain to private chain.

Traders start trade as usual, the trading smart contract is executed in private chain, and the reward is stored in private chain too. When traders would like to end trades, BlockOptions.io will transfer the fund to public chain from private chain.

Although in last version, the traders only need to pay once TX fee, but other TX fees still come from traders in the end. BlockOptions.io can provide the highest reward rate to traders only by reducing any costs as much as possible, in private chain + public chain version, we also can reduce the Oraclize service’s cost by bring in are own oracle service. 

As only need to pay 2 TX fees to complete dozens or hundreds of trades, we will be the first batch of platforms that can achieve such minimum avg. TX fee per trade on the market.

One big plus for using private chain to process trading, we can get back results to traders near to real time as we can use 1-2 seconds block time in private chain,  much faster than only use public chain.

Conclusion
The competition is very fierce in binary options industry, traditional binary option brokers pay more than $300 to affiliate to get a new traders. Although we believe we can and will build the best blockchain binary options platform on market, but we still need pay more attentions on marketing, PR, networking and helps from communities to achieve it. 

DISCLAIMER
This document is for informational purposes only and does not constitute an offer or solicitation to sell shares or securities in BlockOptions.io. or any related or associated company. Any such offer or solicitation would only be made by a confidential offering memorandum and in accordance with applicable securities and other laws. None of the information or analyses presented are intended to form the basis for any investment decision, and no specific recommendations are intended. Accordingly, this document does not constitute investment advice or counsel or solicitation for investment in any security. This document does not constitute or form part of, and should not be construed as, any offer for sale or subscription of, or any invitation to offer to buy or subscribe for, any securities, nor should it or any part of it form the basis of or be relied on in any connection with, any contract or commitment whatsoever. BlockOptions expressly disclaims any and all responsibility for any direct or consequential loss or damage of any kind whatsoever arising directly or indirectly from: (i) reliance on any information contained in this document, (ii) any error, omission or inaccuracy in any such information or (iii) any action resulting therefrom.

Contact
To reach us visit our website at https://blockoptions.io





[1]Binary options worth $1.25b to Israel's GDP in 2016 http://www.globes.co.il/en/article-binary-options-worth-125b-to-israel-gdp-in-2016-1001166968
[2]How the binary options industry works? and How do binary options brokers make their money? http://www.wvwv.org/binary-options-brokers/
[3]Mitchell, Cory (11 June 2014). "A Guide To Trading Binary Options In The U.S.". Investopedia. Retrieved 17 December 2016. http://www.investopedia.com/articles/active-

trading/061114/guide-trading-binary-options-us.asp
[4]Pape, Gordon (27 July 2010). "Don’t Gamble On Binary Options". Forbes.com. Archived from the original on 2013-06-21. Retrieved 15 April 2011. 

https://web.archive.org/web/20130621142514/http://www.forbes.com/sites/investor/2010/07/27/dont-gamble-on-binary-options/print/
[5]IG Group Reports Record Revenues, Pulls Back on Binary Options http://www.financemagnates.com/forex/brokers/ig-group-reports-record-revenues-pulls-back-binaries/
[6] "warning against unauthorized websites offering binary options trading". AMF. Retrieved 14 January 2012. 

http://www.fma.gv.at/de/verbraucher/investorenwarnungen/internationale-warnmeldungen/detail-internatwm/article/warning-against-unauthorised-websites-offering-binary-options-trading.html
[7] Cryptocompare https://www.cryptocompare.com/about-us/
[8] xignite  http://www.xignite.com/market-data/about/
[9] Oraclize Overview  http://docs.oraclize.it/#overview
[10] https://en.wikipedia.org/wiki/Binary_option#Regulation.2C_and_fraud
