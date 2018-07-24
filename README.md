# soliditySandbox

Basic Set with Local Chain

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


