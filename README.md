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


## use infura for deply contract

`npm install truffle-hdwallet-provider --save`
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

Pass the address in the admin page for sending eth to the newly created account



----------- when u see the $$ in the metamask------------
it is working

## SSH to first TX node (Create account in the Azure)

Copy the command from Azure ->
Paste it in the PowerShell
password ->"Password when creating the blockchain"

# enable run command on blockchain
`geth attach`

# unlock the default account 
`personal.unlockAccount(eth.coinbase)`

# enter the passphase for the default account
Then run mirgrate again

# Run Truffle on the remote server
`truffle console --network production`

#Calling Contract from other Contract and log it out
`var mg`
`MyGame.deployed().then(function(deployed){mg=deployed})`
`mg.Showcase.call('Victor').then(function(returnValue){console.log(returnValue);});`






## Metamask
 External Account -> Decouple from any network

## Contract Account
  Only available in one network 
  
  
## Transaction

nonce -> none-sense
to -> address of count this money going to
value -> amount
gasPrice -> Amount of edther the sender is willing to pay per unit gas to get this transaction processed
startGas/gaslimit -> Unit of gas  that this transaction can consume
V ->
R -> Complicated Crytographic piece of data from sender's private key
S ->


## lock
SHA256 HASH -> Finger Print
Nonce -> Change to make first 4 dig 0000 for the hash, change base of 10
 (actually is less than some value) ,
 64 character long , 64 dices, 
 
 The block time -> essential the time need to figure out the nonse
 1 block -> 15 secs (for eth)
 -> Raise the lesser than
 
 
 

# Token base
### Only remmeber money movement

# Coin base
### Can not create money out of thin air, go backward to find out the balance

## Contract Account
balance -> Amount of eth this account owns
storage -> Data Storage for this contract (uint, string)
code -> Raw Machine code for this contract

# Solidity Debug
Truffle console -> For testing contract

`truffle console`

Only use Async code to interact with the contract

`var hw`
`Hello.deployed().then(function(deployed){hw=deployed;});`
`hw.sayHello.call()`  Call direction function 

#example 2
`var ss`
`ScoreStore.deployed().then(function(deployed){ss=deployed;});`


## Deploy in Rinkey Network

`npm install --save truffle-hdwallet-provide`
`npm install ethereumjs-abi --save`

## Compile and deply contract in the server
`ssh ` from Azure
enter password
`sudo add-apt-repository ppa:ethereum/ethereum -y`

`sudo apt-get update`
`sudo apt-get install solc -y`


# Javascript
`var ss`

`FoodSafe.deployed().then(function(deployed){s = deployed;});`

`ss.AddNewLocation(1000,"The productor","123")`
`ss.AddNewLocation(2000,"The supplier","123")`
`ss.AddNewLocation(3000,"The store","123")`

# Check the getter function
`ss.getLocation.call(1).then(function(retval){console.log(retval)})`
`ss.getLocation.call(2).then(function(retval){console.log(retval)})`
`ss.getLocation.call(3).then(function(retval){console.log(retval)})`

# Compile the contract in the Server (Advance userage)
``



 


