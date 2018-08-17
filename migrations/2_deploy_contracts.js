var Inbox = artifacts.require("./ScoreStore.sol");

module.exports = function(deployer) {
    deployer.deploy(Inbox);
};
