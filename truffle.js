var HDWalletProvider = require("truffle-hdwallet-provider");


var mnemonic = "YOUR WALLET SECRET";

module.exports = {
    // See <http://truffleframework.com/docs/advanced/configuration>
    // for more about customizing your Truffle configuration!
    networks: {
        // development: {
        //     host: "127.0.0.1",
        //     port: 7545,
        //     // gas: 6721974,
        //     network_id: "*"
        // },
        rinkeby: {
            provider: function() {
                return new HDWalletProvider(mnemonic,
                    "https://rinkeby.infura.io/v3/API");
                    },
            gas: 4500000,
            gasPrice: 25000000000,
            network_id: "4"
        }
        // Match any network id
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
        // },
        //"Ethereum RPC end point" => Make sure remove the http and port setting
        // azure: { //Find out in azure portal, look for Azure blockchain
        //     host: "127.0.0.1",
        //     port: 7545,
        //     // gas: 6721974,
        //     network_id: "*"
        // }


    },

    solc: {
        optimizer: {
            enabled: true,
            runs: 200
        }
    },



};
