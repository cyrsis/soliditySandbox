// const HDWalletProvider = require("truffle-hdwallet-provider");

module.exports = {
    // See <http://truffleframework.com/docs/advanced/configuration>
    // for more about customizing your Truffle configuration!
    networks: {
        development: {
            host: "127.0.0.1",
            port: 7545,
            // gas: 6721974,
            network_id: "*"
        }// Match any network id
        // },
        // ropsten: {
        //     network_id: 3,
        //     host: "localhost",
        //     port: 8545,
        //     gas: 2900000
        // },
        // "ropsten-infura": {
        //     provider: () => new HDWalletProvider("<passphrase>", "https://ropsten.infura.io/<key>"),
        //     network_id: 3,
        //     gas: 4700000
        // }
    },

    solc: {
        optimizer: {
            enabled: true,
            runs: 200
        }
    },



};
