# soliditySandbox

Basic Set with Local Chain

Part 1: Setting Up Your ICO

 – Step 1: Do you Need an ICO?
 – Step 2: Familiarize Yourself with Global Legal Challenges
 – Step 3: Write your Whitepaper
 - Step 4: Choose your Token Type
 - Step 5: State your Terms and Conditions
 - Step 6: Scout your ICO Team
 - Step 7: Choose your Blockchain Platform for the ICO
 - Step 8: Set up your Website
 - Step 9: Create your Issue Calendar
 - Step 10: Smart Contracts
 - Step 11: Setting up the Hardware

Part 2: Marketing
- Step 1: Legal Loopholes
- Step 2: Brand Identity
- Step 3: Develop a Story for your Coin
- Step 4: Reach out to Journalists and Develop a Press Release
- Step 5: Spreading your Media Coverage

Part 3: Launch!

## Ref
----------------
https://openzeppelin.org/api/docs/open-zeppelin.html


## logs
--------------------------------


August 5, 2018 2:40 pm
 - Pick up an idea for working with Estate Planning,
   not really easy to make $$$
   
August 4, 2018 5:38 pm
 - start develop bunch of contract for different things

August 4, 2018 1:56 am
 - Fix the run config from the bash, speed the development by 30%
 
August 3, 2018 8:28 pm
 - Finally done most of the® update on my machine, would do some smart contact for now
 

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
             gas: 6721974,
             network_id: '*' // Match any network id
         }
     }
 };
`

4. Test it out
`truffle compile
 truffle migrate
`
Windows
`truffle-cli compile`
`truffle-cli migrate`

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

## Metamask, sign key pairs and interact with the network

## Windows needs 

`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`

then 

`chocolately` install it with powershell

`choco install git.install --params "/GitAndUnixToolsOnPath`

`git config --global http.sslVerify false`

`npm install -g node-gyp`

`npm install --global --production windows-build-tools`

`npm install -g ethereumjs-testrpc`

`npm install -g truffle`

Dont worry about warning on the way


## Get some free eth for rinkeby testnet

https://faucet.rinkeby.io/

Share your etc address in google+

Put the link back to the fac

## Gas Math
 - 21000 units of gas at 20 GWEI = 0.00042 ETH.
## Gas limit

*21000 is the gas limit for standard transactions

## Gas Price
40 GWEI Gas Price will almost always get you into the next block.
20 GWEI will usually get you within the next few blocks.
2 GWEI will usually get you within the next few minutes.

Max of 50

## Overcome Eth problems
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

## Deployment on the main net

https://infura.io/dashboard

## abi 
全称是 Application Binary Interface，即应用程序二进制接口。简单的说，就是合约对外的接口描述。

## Azure setup

Portal Azure -> Market Place ->
Ethereum Consortium Leader -> Deployment Model ->
Default -> 

Resource  Prefix : dcl
vm user name: gethadmin
Auth Type : Password
Password: YOURPASSWORD
Resource Group : BlockChain

Consortium Member ID: 0 (because it is the first one)
Mining Node : 2
Mining Node replication: Locally-redundant
Virtual Machine Size : 2x Standard D1  v2
Transaction node: 1
Virutal Machine Size: 1 x Standard D1 V2

Network ID: default (Same network ID thus connect to each other)
Custom Genesis Block : No
Ethereum Account password: YOURPASSWORD
Ethereum private key passphrase: use online generate one
Confirm passphrase : use online generate one

Find Resource Group ->

Find Deployment ->

Find Azure multi member ->

Copy admin site and open it in seperate tab ->

Find My Account Address -> my newly account address

Find ethereum RPC-Endpoint -> Open metamask

Metamask Setting -> NEW RPC URL - > past the eth RCP-endpoint

Metamask Refresh -> Copy the address of account

Pass the addres in the admin page for sending eth to the newly created account

----------- when u see the $$ in the metamask------------
it is working




