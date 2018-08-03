# soliditySandbox

Basic Set with Local Chain

## logs
--------------------------------

August 4, 2018 1:56 am
 - Fix the run config from the bash, speed the development by 30%
 
August 3, 2018 8:28 pm
 - Finally done most of the update on my machine, would do some smart contact for now
 

July 24, 2018 10:34 am
Setup for blockchain development

1. Truffle (Boostrap the project)

`sudo npm install -g truffle`

`truffle init`

`truffle unbox metacoin`
- Can be other than metacoin depends on your needs

`npm install openzeppelin-solidity --save`
- Bring in the library for development

2. Speed up the developement with local chain

Ganache

`sudo npm install -g ganache-cli`

3. Change the Truffle.js for Local Deployment

`module.exports = {
     networks: {
         development: {
             host: 'localhost',
             port: '7545',
             network_id: '*' // Match any network id
         }
     }
 };
`

4. Test it out
`truffle compile
 truffle migrate
`

5. Test the code
`truffle test
`
6. Get the coin you created
`npm run dev`

7. Set the MetaMask to local
RPC
`127.0.01:7545`

Import Account 

##Window Ganache Setup (make sure run in nodejs command)

`npm install --global --production windows-build-tools`



`npm -g install npm@next`

`npm install --save web3@1.0.0-beta.26`

`git clone https://github.com/trufflesuite/ganache.git`

`cd ganache`

`npm install`

`npm start`

Download win sdk 8.1

https://developer.microsoft.com/zh-tw/windows/downloads/sdk-archive

##Overcome Ethe
 Private Data on public chain - extra encryption
 Big File -interplanetary file System
 Scale - Ethereum Sharing
 Private Chain - Azure
 
 ##Use case
 FirstBlood -> Sport
 Dynamic -> P to P Insurance
UJO -> Music Store
Golem ->Super computer  

##Soft Fork vs hard Fork

Soft -> Software Upgrade

Hard -> whole new Branch

##ERC721 Tokens is the for gaming (non-fund)

